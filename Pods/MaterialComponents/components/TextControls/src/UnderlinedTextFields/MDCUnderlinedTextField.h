// Copyright 2020-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <UIKit/UIKit.h>

#import "MaterialTextControls+BaseTextFields.h"

/**
 An implementation of a Material filled text field.
 */
__attribute__((objc_subclassing_restricted)) @interface MDCUnderlinedTextField : MDCBaseTextField

/**
 MDCUnderlinedTextField does not support UITextBorderStyle borders.
 */
@property(nonatomic, assign) UITextBorderStyle borderStyle NS_UNAVAILABLE;

/**
The thickness of the underline that shows in the normal and disabled states. The default is 1.
*/
@property(nonatomic, assign) CGFloat normalUnderlineThickness;

/**
The thickness of the underline that shows in the editing state. The default is 2.
*/
@property(nonatomic, assign) CGFloat editingUnderlineThickness;

/**
Sets the normal underline thickness.
@param thickness The thickness of the underline.
@param animated Determines whether or not the change is animated.
*/
- (void)setNormalUnderlineThickness:(CGFloat)thickness animated:(BOOL)animated;

/**
Sets the editing underline thickness.
@param thickness The thickness of the underline.
@param animated Determines whether or not the change is animated.
*/
- (void)setEditingUnderlineThickness:(CGFloat)thickness animated:(BOOL)animated;

/**
 Sets the underline color for a given state.
 @param underlineColor The UIColor for the given state.
 @param state The MDCTextControlState.
 */
- (void)setUnderlineColor:(nonnull UIColor *)underlineColor forState:(MDCTextControlState)state;

/**
 Returns the underline color for a given state.
 @param state The MDCTextControlState.

 The default values are sensible shades of black.
 */
- (nonnull UIColor *)underlineColorForState:(MDCTextControlState)state;

@end
