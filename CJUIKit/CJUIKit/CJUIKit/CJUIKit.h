//
//  CJUIKit.h
//  CJUIKit
//
//  Created by chujian.zheng on 2019/9/4.
//  Copyright © 2019 BIT Net Technology(Tian Jin)co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ConstraintMaker) (MASConstraintMaker  * _Nullable make);
typedef void(^AlertButtonAction) (UIAlertAction *action);

@interface CJUIKit : NSObject

/**
 插入一个View
 
 @param superView 父视图
 @param make 约束
 @return UIView
 */
UIView *InsertView(id _Nullable superView, ConstraintMaker _Nullable make);

/**
 插入一条分割线
 
 @param superView 父视图
 @param color 分割线颜色
 @param make 约束
 @return UIView
 */
UIView *InsertColorView(id _Nullable superView, UIColor *color, ConstraintMaker _Nullable make);

/**
 插入一个Label
 
 @param superView 父视图
 @param text 内容
 @param textAlign 字体位置
 @param fontSize 字体大小
 @param textColor 字体颜色
 @param make 约束
 @return UILabel
 */
UILabel *InsertLabel(id _Nullable superView, NSTextAlignment textAlign, CGFloat fontSize, UIColor *textColor, NSString *text, ConstraintMaker _Nullable make);

/**
 插入一个按钮
 
 @param superView 父视图
 @param title 按钮标题
 @param fontSize 按钮字体大小
 @param textColor 按钮字体颜色
 @param tag tag
 @param target target
 @param action 点击事件
 @param make 约束
 @return UIButton
 */
UIButton *InsertButton(id _Nullable superView, CGFloat fontSize, UIColor *textColor, int tag, id target, SEL _Nullable action, NSString *title, ConstraintMaker _Nullable make);
/**
 插入一个图片按钮
 
 @param superView 父视图
 @param image 按钮图片
 @param tag tag
 @param target target
 @param action 点击事件
 @param make 约束
 @return UIButton
 */
UIButton *InsertImageButton(id _Nullable superView, UIImage  * _Nullable image, int tag, id target, SEL _Nullable action, ConstraintMaker _Nullable make);

/**
 插入一个ImageView
 
 @param superView 父视图
 @param image 图片
 @param make 约束
 @return UIImageView
 */
UIImageView *InsertImageView(id _Nullable superView, UIImage * _Nullable image, ConstraintMaker _Nullable make);

/**
 插入一个网络图片
 
 @param superView 父视图
 @param imageURL 图片url
 @param placeholderImage 占位图
 @param make 约束
 @return UIImageView
 */
//UIImageView *InsertImageViewWithURL(id superView, NSURL *imageURL, UIImage *placeholderImage, ConstraintMaker make);

/**
 插入一个输入框
 
 @param superView 父视图
 @param delegate delegate
 @param placeholder 提示文字
 @param fontSize 字体大小
 @param make 约束
 @return UITextField
 */
UITextField *InsertTextField(id _Nullable superView, id _Nullable delegate, CGFloat fontSize, NSString *placeholder, ConstraintMaker _Nullable make);

/**
 插入一个textView
 
 @param superView 父视图
 @param delegate delegate
 @param fontSize 字体大小
 @param textColor 字体颜色
 @param make 约束
 @return UITextView
 */
UITextView *InsertTextView(id superView, id delegate, CGFloat fontSize, UIColor *textColor, ConstraintMaker make);

/**
 插入一个scrollView
 
 @param superView 父视图
 @param delegate delegate
 @param make 约束
 @return UIScrollView
 */
UIScrollView *InsertScrollView(id _Nullable superView, id<UIScrollViewDelegate> _Nullable delegate, ConstraintMaker _Nullable make);

/**
 插入一个TableView
 
 @param superView 父视图
 @param delegate delegate
 @param dataSource dataSource
 @param make 约束
 @return UITableView
 */
UITableView *InsertTableView(id _Nullable superView, id<UITableViewDelegate> _Nullable delegate, id<UITableViewDataSource> _Nullable dataSource, ConstraintMaker _Nullable make);

/**
 插入一个自适应cell高度的TableView
 
 @param superView 父视图
 @param delegate delegate
 @param dataSource dataSource
 @param estimatedRowHeight 预设高度
 @param make 约束
 @return UITableView
 */
UITableView *InsertTableViewWithRowHeight(id _Nullable superView, id<UITableViewDelegate> _Nullable delegate, id<UITableViewDataSource> _Nullable dataSource, CGFloat estimatedRowHeight, ConstraintMaker _Nullable make);

/**
 插入一个分组的TableView
 
 @param superView 父视图
 @param delegate delegate
 @param dataSource DataSource
 @param estimatedRowHeight 预设高度
 @param make 约束
 @return UITableView
 */
UITableView *InsertGroupTableView(id _Nullable superView, id<UITableViewDelegate> delegate, id<UITableViewDataSource> dataSource, CGFloat estimatedRowHeight, ConstraintMaker _Nullable make);
/**
 创建一个弹窗
 
 @param style 弹窗风格(UIAlertControllerStyleActionSheet, UIAlertControllerStyleAlert)
 @param title 标题
 @param message 内容
 @param cancelTitle 取消按钮
 @param cancelAction 取消按钮回调
 @return UIAlertController
 */
UIAlertController *SetAlertController(UIAlertControllerStyle style, NSString *title, NSString *message, NSString *cancelTitle, AlertButtonAction _Nullable cancelAction);
@end

NS_ASSUME_NONNULL_END
