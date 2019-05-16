@interface UIKeyboard : UIView
@end
@interface UIKeyboardDockView : UIView
@end

    %hook UIKeyboard
        -(void)layoutSubviews {
            %orig;
            self.backgroundColor = [UIColor blackColor];
        }
    %end

    %hook UIKBRenderConfig
        -(void)setLightKeyboard:(BOOL)arg1 {
            %orig(NO);
        }
    %end

    %hook UIKeyboardDockView
        -(void)layoutSubviews {
            %orig;
            self.backgroundColor = [UIColor blackColor];
        }
    %end


