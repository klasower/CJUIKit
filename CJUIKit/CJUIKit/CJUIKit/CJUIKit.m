//
//  CJUIKit.m
//  CJUIKit
//
//  Created by chujian.zheng on 2019/9/4.
//  Copyright © 2019 BIT Net Technology(Tian Jin)co.,Ltd. All rights reserved.
//

#import "CJUIKit.h"

@implementation CJUIKit

#pragma mark - UIView

UIView *InsertView(id superView, ConstraintMaker make) {
    UIView *view = [[UIView alloc] init];
    if (superView) {
        [superView addSubview:view];
        if (make) {
            [view mas_makeConstraints:make];
        }
        
    }
    return view;
}

UIView *InsertColorView(id superView, UIColor *color, ConstraintMaker make) {
    UIView *lineView = InsertView(superView, make);
    lineView.backgroundColor = color;
    return lineView;
}

#pragma mark - UILabel

UILabel *InsertLabel(id superView, NSTextAlignment textAlignment, CGFloat fontSize, UIColor *textColor, NSString *text, ConstraintMaker make) {
    UILabel  *label = [[UILabel alloc] init];
    label.text = text;
    label.textAlignment = textAlignment;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    if (superView) {
        [superView addSubview:label];
        if (make) {
            [label mas_makeConstraints:make];
        }
    }
    return label;
}

#pragma mark - UIButton

UIButton *InsertButton(id superView, CGFloat fontSize, UIColor *textColor, int tag, id target, SEL action, NSString *title, ConstraintMaker make) {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTag:tag];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    if (superView) {
        [superView addSubview:button];
        if (make) {
            [button mas_makeConstraints:make];
        }
    }
    
    return button;
}

UIButton *InsertImageButton(id superView, UIImage * _Nullable image, int tag, id target, SEL action, ConstraintMaker make) {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button.imageView setContentMode:UIViewContentModeScaleAspectFill];
    [button setTag:tag];
    if (action != nil) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    if (image != nil) {
        [button setImage:image forState:UIControlStateNormal];
    }
    if (superView) {
        [superView addSubview:button];
        if (make) {
            [button mas_makeConstraints:make];
        }
    }
    
    return button;
}

#pragma mark - UIImageView

UIImageView *InsertImageView(id superView, UIImage * _Nullable image, ConstraintMaker make) {
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    if (superView) {
        [superView addSubview:imageView];
        if (make) {
            [imageView mas_makeConstraints:make];
        }
        
    }
    
    return imageView;
}

#pragma mark - UITextField

UITextField *InsertTextField(id superView, id delegate, CGFloat fontSize, NSString *placeholder, ConstraintMaker make) {
    UITextField *textField = [[UITextField alloc] init];
    textField.delegate = delegate;
    textField.placeholder = placeholder;
    textField.font = [UIFont systemFontOfSize:fontSize];
    if (superView) {
        [superView addSubview:textField];
        if (make) {
            [textField mas_makeConstraints:make];
        }
        
    }
    return textField;
}

#pragma mark - UITextView

UITextView *InsertTextView(id superView, id delegate, CGFloat fontSize, UIColor *textColor, ConstraintMaker make) {
    UITextView *textView = [[UITextView alloc] init];
    textView.delegate = delegate;
    textView.textColor = textColor;
    // 默认光标颜色为文字颜色
    textView.tintColor = textView.textColor;
    textView.font = [UIFont systemFontOfSize:fontSize];
    if (superView) {
        [superView addSubview:textView];
        if (make) {
            [textView mas_makeConstraints:make];
        }
        
    }
    return textView;
}

#pragma mark - UIScrollView
UIScrollView *InsertScrollView(id superView, id<UIScrollViewDelegate> delegate, ConstraintMaker make) {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.delegate = delegate;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    
    if (superView) {
        [superView addSubview:scrollView];
        if (make) {
            [scrollView mas_makeConstraints:make];
        }
        
    }
    
    return scrollView;
}

#pragma mark - UITableView

UITableView *InsertTableView(id superView, id<UITableViewDelegate> delegate, id<UITableViewDataSource> dataSource, ConstraintMaker make) {
    UITableView *tableView = [[UITableView alloc] init];
    tableView.backgroundColor = kColorBg;
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    if (delegate) {
        tableView.delegate = delegate;
    }
    if (dataSource) {
        tableView.dataSource = dataSource;
    }
    if (superView) {
        [superView addSubview:tableView];
        if (make) {
            [tableView mas_makeConstraints:make];
        }
        
    }
    
    return tableView;
}

UITableView *InsertTableViewWithRowHeight(id superView, id<UITableViewDelegate> delegate, id<UITableViewDataSource> dataSource, CGFloat estimatedRowHeight, ConstraintMaker make) {
    UITableView *tableView = InsertTableView(superView, delegate, dataSource, make);
    tableView.estimatedRowHeight = estimatedRowHeight;
    tableView.rowHeight = UITableViewAutomaticDimension;
    return tableView;
}

UITableView *InsertGroupTableView(id superView, id<UITableViewDelegate> delegate, id<UITableViewDataSource> dataSource, CGFloat estimatedRowHeight, ConstraintMaker make) {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [tableView setBackgroundColor:kColorBg];
    if (delegate) {
        tableView.delegate = delegate;
    }
    if (dataSource) {
        tableView.dataSource = dataSource;
    }
    if (superView) {
        [superView addSubview:tableView];
        if (make) {
            [tableView mas_makeConstraints:make];
        }
        
    }
    tableView.estimatedRowHeight = estimatedRowHeight;
    tableView.rowHeight = UITableViewAutomaticDimension;
    return tableView;
}

#pragma mark - UIAlertController

UIAlertController *SetAlertController(UIAlertControllerStyle style, NSString *title, NSString *message, NSString *cancelTitle, AlertButtonAction cancelAction) {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    if (cancelTitle && ![cancelTitle isEqualToString:@""]) {
        [alertController addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:cancelAction]];
    }
    
    return alertController;
}

@end
