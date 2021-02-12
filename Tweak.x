
%hook UITabBarController

-(void)viewDidLoad {
	%orig;

	//got this code for the reconsizer from Stackoverflow, credits belong to them https://stackoverflow.com/a/45048243
	 UISwipeGestureRecognizer *gestureRecognizerRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandlerRight:)];
    [gestureRecognizerRight setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:gestureRecognizerRight];

    UISwipeGestureRecognizer *gestureRecognizerLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandlerLeft:)];
    [gestureRecognizerLeft setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.view addGestureRecognizer:gestureRecognizerLeft];
}

%new
-(void)swipeHandlerRight:(id)sender {
	int i = self.selectedIndex;
	i++;
	NSInteger nsi = (NSInteger) i;
	[self setSelectedIndex: nsi];
}

%new
-(void)swipeHandlerLeft:(id)sender {
	int i = self.selectedIndex;
	i = i - 1;
	NSInteger nsi = (NSInteger) i;
	[self setSelectedIndex: nsi];
}

%end