//
//  HomeGroupListSectionControllerDelegateProtocol.h
//  Secret Santa Nonsense
//
//  Created by Jayme Rutkoski on 3/31/20.
//  Copyright © 2020 jrutkosk. All rights reserved.
//

@class SecretSantaGroup;
#ifndef HomeGroupListSectionControllerDelegateProtocol_h
#define HomeGroupListSectionControllerDelegateProtocol_h

@protocol HomeGroupListSectionControllerDelegate <NSObject>

- (void)homeGroupListSectionControllerDidSelectGroup:(SecretSantaGroup *)group;

@end

#endif /* HomeGroupListSectionControllerDelegateProtocol_h */
