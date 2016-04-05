
#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property(nonatomic,strong) NSArray *items;
@property(nonatomic,strong) NSArray *groups;
@property(nonatomic,copy) NSString *cellIdentifier;

@property(nonatomic,copy) TableViewCellPassBlock passBlock;
@property(nonatomic,strong) NSArray *selectIndexTitles;
@property(nonatomic,strong) NSArray *groupTitles;



@end

@implementation ArrayDataSource

#pragma mark - TableView
- (NSArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

- (id)initWithItems:(NSArray *)anGroups
     cellIdentifier:(NSString *)aCellIdentifier
 passBlock:(TableViewCellPassBlock)aPassBlock
{
    self = [super init];
    
    if(self){
        self.groups = anGroups;
        self.cellIdentifier = aCellIdentifier;
        self.passBlock = [aPassBlock copy];
    }
    return self;
}

- (void)setSelectIndexTitle:(NSArray *)selectIndexTitles
{
    self.selectIndexTitles = selectIndexTitles;
}

- (void)setSectionTitle:(NSArray *)groupTitles
{
    self.groupTitles = groupTitles;
}



#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    self.items = self.groups[section];
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                               forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.cellIdentifier];
    } 
    
    
    NSArray *items = self.groups[indexPath.section];
    id item = items[indexPath.row];
    self.passBlock(cell, item);
    return cell;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *title = self.groupTitles[section];
    return title;
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return self.selectIndexTitles;
}




@end
