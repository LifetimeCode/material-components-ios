// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY MDCTextFieldSnapshotTestsIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCTextFieldSnapshotTestCase.h"
#import "MDCTextFieldSnapshotTestsStrings.h"
#import "MaterialTextFields.h"

@interface MDCTextFieldOutlinedControllerSnapshotTests : MDCTextFieldSnapshotTestCase
@property(nonatomic, strong) MDCTextInputControllerOutlined *textFieldController;
@end

@implementation MDCTextFieldOutlinedControllerSnapshotTests

- (void)setUp {
  [super setUp];

  self.textField.clearButtonMode = UITextFieldViewModeAlways;

  self.textFieldController =
      [[MDCTextInputControllerOutlined alloc] initWithTextInput:self.textField];
}

- (void)tearDown {
  self.textFieldController = nil;

  [super tearDown];
}

#pragma mark - Tests

- (void)testOutlinedTextFieldEmpty {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldEmptyIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

#pragma mark - Single field tests

- (void)testOutlinedTextFieldWithShortPlaceholderText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortPlaceholderTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongPlaceholderText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongPlaceholderTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortHelperText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperShortTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortHelperTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperShortTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongHelperText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperLongTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongHelperTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperLongTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortErrorText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorShortTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorShortTextLatin];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortErrorTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorShortTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorShortTextLatin];
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongErrorText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorLongTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorLongTextLatin];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongErrorTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorLongTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorLongTextLatin];
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortInputText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortInputTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputText {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputTextIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

#pragma mark - Multiple field tests

- (void)testOutlinedTextFieldWithShortInputPlaceholderHelperTexts {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperShortTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortInputPlaceholderHelperTextsIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperShortTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputPlaceholderHelperTexts {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperLongTextLatin;

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputPlaceholderHelperTextsIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;
  self.textFieldController.helperText = MDCTextFieldSnapshotTestsHelperLongTextLatin;
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortInputPlaceholderErrorTexts {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorShortTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorShortTextLatin];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithShortInputPlaceholderErrorTextsIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputShortTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderShortTextLatin;
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorShortTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorShortTextLatin];
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputPlaceholderErrorTexts {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorLongTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorLongTextLatin];

  // Then
  [self generateSnapshotAndVerify];
}

- (void)testOutlinedTextFieldWithLongInputPlaceholderErrorTextsIsEditing {
  // Uncomment below to recreate the golden
  //  self.recordMode = YES;

  // When
  self.textField.text = MDCTextFieldSnapshotTestsInputLongTextLatin;
  self.textFieldController.placeholderText = MDCTextFieldSnapshotTestsPlaceholderLongTextLatin;
  [self.textFieldController setErrorText:MDCTextFieldSnapshotTestsErrorLongTextLatin
                 errorAccessibilityValue:MDCTextFieldSnapshotTestsErrorLongTextLatin];
  [self.textField MDCtest_setIsEditing:YES];

  // Then
  [self generateSnapshotAndVerify];
}

@end