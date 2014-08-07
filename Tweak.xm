%hook FBMessengerInterstitialController
- (BOOL)_promoPeriodExceeds:(int)arg1 {
    return NO;
}
- (BOOL)_shouldShowPromoNowWithRefreshInterval:(int)arg1 {
    return NO;
}
%end

%ctor {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    %init;
    [pool release];
}
