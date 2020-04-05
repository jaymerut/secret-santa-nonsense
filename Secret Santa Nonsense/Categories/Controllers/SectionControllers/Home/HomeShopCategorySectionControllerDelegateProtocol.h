//
//  HomeShopCategorySectionControllerDelegateProtocol.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 4/5/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

#ifndef HomeShopCategorySectionControllerDelegateProtocol_h
#define HomeShopCategorySectionControllerDelegateProtocol_h

@protocol HomeShopCategorySectionControllerDelegate <NSObject>

- (void)homeShopCategorySectionControllerDidSelectCategory:(NSString *)category;

@end

#endif /* HomeShopCategorySectionControllerDelegateProtocol_h */
