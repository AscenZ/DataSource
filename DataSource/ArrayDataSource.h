#import <UIKit/UIkit.h>
#import <Foundation/Foundation.h>

typedef void (^TableViewCellPassBlock)(id cell,id item);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

/**
 *  初始化数据源的方法
 *
 *  @param anItems         用于接受数据的数组
 *  @param aCellIdentifier 接收cell的ID
 *  @param aPassBlock      接收传递的Block
 */
- (id)initWithItems:(NSArray *)datas
     cellIdentifier:(NSString *)aCellIdentifier
 passBlock:(TableViewCellPassBlock)aPassBlock;

/**
 *  初始化tableView的索引导航栏
 *
 *  @param selectIndexTitles 存储数据的数组
 */
- (void)setSelectIndexTitle:(NSArray *)selectIndexTitles;

- (void)setSectionTitle:(NSArray *)groupTitles;


@end
