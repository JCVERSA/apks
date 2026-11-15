.class public final Lcom/gyf/immersionbar/ImmersionBar;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/gyf/immersionbar/ImmersionCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private final mActivity:Landroid/app/Activity;

.field private mBarConfig:Lcom/gyf/immersionbar/a;

.field private mBarParams:Lcom/gyf/immersionbar/b;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mFitsKeyboard:Lcom/gyf/immersionbar/f;

.field private mFitsStatusBarType:I

.field private mFragment:Landroid/app/Fragment;

.field private mInitialized:Z

.field private mIsActionBarBelowLOLLIPOP:Z

.field private mIsDialog:Z

.field private mIsDialogFragment:Z

.field private mIsFragment:Z

.field private mKeyboardTempEnable:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarWidth:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

.field private mSupportFragment:Landroidx/fragment/app/Fragment;

.field private final mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gyf/immersionbar/b;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 3
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 4
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 5
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 6
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 7
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 10
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 11
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 12
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 13
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 14
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    .line 15
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 99
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 100
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 101
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 102
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 103
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 106
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 107
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 108
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 109
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 110
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 112
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 113
    iput-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 114
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 115
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 78
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 79
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 80
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 81
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 82
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 85
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 86
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 87
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 88
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 89
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 91
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 92
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 93
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    .line 94
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 95
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 96
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 38
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 39
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 40
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 41
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 42
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 45
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 46
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 47
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 48
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 49
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 51
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    .line 53
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 57
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 58
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 59
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 60
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 61
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 64
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 65
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 66
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 67
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 68
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 70
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 74
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 75
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 19
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 20
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 21
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 22
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 23
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 26
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 27
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 28
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 29
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 30
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    .line 34
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method private adjustDarkModeParams()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget v1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 4
    .line 5
    iget v2, v0, Lcom/gyf/immersionbar/b;->r:I

    .line 6
    .line 7
    iget v0, v0, Lcom/gyf/immersionbar/b;->d:F

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lz0/b;->d(IIF)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 14
    .line 15
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->m:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const v5, -0x454546

    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-le v0, v5, :cond_0

    .line 27
    .line 28
    move v0, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :goto_0
    iget v1, v1, Lcom/gyf/immersionbar/b;->o:F

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 37
    .line 38
    iget v1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 39
    .line 40
    iget v2, v0, Lcom/gyf/immersionbar/b;->s:I

    .line 41
    .line 42
    iget v0, v0, Lcom/gyf/immersionbar/b;->f:F

    .line 43
    .line 44
    invoke-static {v1, v2, v0}, Lz0/b;->d(IIF)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 49
    .line 50
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->n:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    if-le v0, v5, :cond_2

    .line 57
    .line 58
    move v3, v4

    .line 59
    :cond_2
    iget v0, v1, Lcom/gyf/immersionbar/b;->p:F

    .line 60
    .line 61
    invoke-virtual {p0, v3, v0}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method private cancelListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/e;->d(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/j;->d(Lcom/gyf/immersionbar/n;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static checkFitsSystemWindows(Landroid/view/View;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    check-cast p0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v3, v0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-static {v4}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    return v2

    .line 48
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return v0
.end method

.method private checkInitWithActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public static destroy(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/gyf/immersionbar/q;->b(Landroid/app/Activity;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static destroy(Landroid/app/Activity;Landroid/app/Dialog;Z)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gyf/immersionbar/q;->b(Landroid/app/Activity;Landroid/app/Dialog;Z)V

    return-void
.end method

.method private fitsKeyboard()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->F:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/gyf/immersionbar/f;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/f;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 25
    .line 26
    iget v1, v1, Lcom/gyf/immersionbar/b;->G:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/f;->c(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 45
    .line 46
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->F:Z

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    new-instance v1, Lcom/gyf/immersionbar/f;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/gyf/immersionbar/f;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 66
    .line 67
    iget v0, v0, Lcom/gyf/immersionbar/b;->G:I

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/gyf/immersionbar/f;->c(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    return-void
.end method

.method private fitsLayoutOverlap()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 4
    .line 5
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->B:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->k()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    iget v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 18
    .line 19
    if-eq v3, v0, :cond_3

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v3, v4, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/gyf/immersionbar/b;->A:Landroid/view/View;

    .line 33
    .line 34
    new-array v0, v0, [Landroid/view/View;

    .line 35
    .line 36
    aput-object v4, v0, v1

    .line 37
    .line 38
    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    .line 47
    .line 48
    new-array v0, v0, [Landroid/view/View;

    .line 49
    .line 50
    aput-object v4, v0, v1

    .line 51
    .line 52
    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    .line 61
    .line 62
    new-array v0, v0, [Landroid/view/View;

    .line 63
    .line 64
    aput-object v4, v0, v1

    .line 65
    .line 66
    invoke-static {v3, v2, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method private fitsNotchScreen()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/d;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    return-void
.end method

.method private fitsWindows()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsAboveLOLLIPOP()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsBelowLOLLIPOP()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsLayoutOverlap()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private fitsWindowsAboveLOLLIPOP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const v1, 0x1020002

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->y:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 41
    .line 42
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->E:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    .line 53
    .line 54
    add-int/2addr v0, v2

    .line 55
    :cond_2
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private fitsWindowsBelowLOLLIPOP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->E:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private fitsWindowsEMUI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v1, Lcom/gyf/immersionbar/d;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->H:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->I:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/e;->a(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/e;->c(Landroid/app/Application;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/e;->b()Lcom/gyf/immersionbar/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Lcom/gyf/immersionbar/e;->d(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method private fitsWindowsKITKAT()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const v1, 0x1020002

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->y:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 41
    .line 42
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->E:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    .line 53
    .line 54
    add-int/2addr v0, v2

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->m()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_7

    .line 62
    .line 63
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 64
    .line 65
    iget-boolean v3, v2, Lcom/gyf/immersionbar/b;->H:Z

    .line 66
    .line 67
    if-eqz v3, :cond_7

    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/gyf/immersionbar/b;->I:Z

    .line 70
    .line 71
    if-eqz v3, :cond_7

    .line 72
    .line 73
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->h:Z

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->n()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->d()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    move v3, v2

    .line 92
    move v2, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->g()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    move v3, v1

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move v2, v1

    .line 103
    move v3, v2

    .line 104
    :goto_1
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 105
    .line 106
    iget-boolean v4, v4, Lcom/gyf/immersionbar/b;->i:Z

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->n()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    move v3, v1

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move v2, v1

    .line 121
    goto :goto_2

    .line 122
    :cond_6
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->n()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_8

    .line 129
    .line 130
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/gyf/immersionbar/a;->g()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    move v2, v1

    .line 138
    move v3, v2

    .line 139
    :cond_8
    :goto_2
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->a()I

    move-result p0

    return p0
.end method

.method public static getActionBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getActionBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->d()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcom/gyf/immersionbar/g$a;->a:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/g$a;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/a;->f(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->g()I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarWidth(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcom/gyf/immersionbar/g$a;->a:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/g$a;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/a;->i(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarWidth(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarWidth(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Activity;)I
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-static {p0, p1}, Lcom/gyf/immersionbar/NotchUtils;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method public static getNotchHeight(Landroid/app/Fragment;Lcom/gyf/immersionbar/k;)V
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method public static getNotchHeight(Landroidx/fragment/app/Fragment;Lcom/gyf/immersionbar/k;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->getNotchHeight(Landroid/app/Activity;Lcom/gyf/immersionbar/k;)V

    return-void
.end method

.method private static getRetriever()Lcom/gyf/immersionbar/q;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/q;->i()Lcom/gyf/immersionbar/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/app/Fragment;)I
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 7
    const-string v0, "status_bar_height"

    invoke-static {p0, v0}, Lcom/gyf/immersionbar/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->m()Z

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 7
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasNavigationBar(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/app/Activity;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-static {p0}, Lcom/gyf/immersionbar/NotchUtils;->hasNotchScreen(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchScreen(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private hideBarAboveR()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    sget-object v1, Lcom/gyf/immersionbar/ImmersionBar$a;->a:[I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget v1, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x2

    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    if-eq v1, v3, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroidx/core/view/k2;->a()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Landroidx/core/view/k2;->a()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-static {}, Landroidx/core/view/j2;->a()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroidx/core/view/k2;->a()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-static {v0, v3}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method private hideBarBelowR(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget-object v0, Lcom/gyf/immersionbar/ImmersionBar$a;->a:[I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    or-int/lit16 p1, p1, 0x202

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    or-int/lit16 p1, p1, 0x404

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    or-int/lit16 p1, p1, 0x206

    .line 37
    .line 38
    :goto_0
    or-int/lit16 p1, p1, 0x1000

    .line 39
    .line 40
    return p1
.end method

.method public static hideStatusBar(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private initBarAboveLOLLIPOP(I)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Lcom/gyf/immersionbar/b;->c:I

    .line 14
    .line 15
    :cond_0
    or-int/lit16 v0, p1, 0x400

    .line 16
    .line 17
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->h:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->H:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    or-int/lit16 v0, p1, 0x600

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 30
    .line 31
    const/high16 v1, 0x4000000

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->m()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 45
    .line 46
    const/high16 v1, 0x8000000

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 52
    .line 53
    const/high16 v1, -0x80000000

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 59
    .line 60
    iget-boolean v1, p1, Lcom/gyf/immersionbar/b;->q:Z

    .line 61
    .line 62
    const/16 v2, 0x1d

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    if-lt p1, v2, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 72
    .line 73
    invoke-static {p1, v3}, Lcom/gyf/immersionbar/h;->a(Landroid/view/Window;Z)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 79
    .line 80
    iget v4, v1, Lcom/gyf/immersionbar/b;->a:I

    .line 81
    .line 82
    iget v5, v1, Lcom/gyf/immersionbar/b;->r:I

    .line 83
    .line 84
    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    .line 85
    .line 86
    invoke-static {v4, v5, v1}, Lz0/b;->d(IIF)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 95
    .line 96
    iget v4, p1, Lcom/gyf/immersionbar/b;->a:I

    .line 97
    .line 98
    iget p1, p1, Lcom/gyf/immersionbar/b;->d:F

    .line 99
    .line 100
    invoke-static {v4, v3, p1}, Lz0/b;->d(IIF)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 108
    .line 109
    iget-boolean v1, p1, Lcom/gyf/immersionbar/b;->H:Z

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    if-lt p1, v2, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 118
    .line 119
    invoke-static {p1, v3}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 125
    .line 126
    iget v2, v1, Lcom/gyf/immersionbar/b;->b:I

    .line 127
    .line 128
    iget v3, v1, Lcom/gyf/immersionbar/b;->s:I

    .line 129
    .line 130
    iget v1, v1, Lcom/gyf/immersionbar/b;->f:F

    .line 131
    .line 132
    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 141
    .line 142
    iget p1, p1, Lcom/gyf/immersionbar/b;->c:I

    .line 143
    .line 144
    invoke-virtual {v1, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 145
    .line 146
    .line 147
    :goto_1
    return v0
.end method

.method private initBarBelowLOLLIPOP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupStatusBarView()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/gyf/immersionbar/b;->H:Z

    .line 28
    .line 29
    const/high16 v2, 0x8000000

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->I:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->d()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 59
    .line 60
    :cond_2
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->g()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 71
    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupNavBarView()V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method private initCommonParameter(Landroid/view/Window;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 2
    .line 3
    new-instance p1, Lcom/gyf/immersionbar/b;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/gyf/immersionbar/b;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    const v0, 0x1020002

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 30
    .line 31
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static isGesture(Landroid/app/Fragment;)Z
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isGesture(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isGesture(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/gyf/immersionbar/g$a;->a:Z

    return p0
.end method

.method public static isGesture(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isGesture(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->n()Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroid/app/Fragment;)Z
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isNavigationAtBottom(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isNavigationAtBottom(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->isNavigationAtBottom(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isSupportNavigationIconDark()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static isSupportStatusBarDarkFont()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method private postFitsWindowsBelowLOLLIPOP()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsKITKAT()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsEMUI()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private setBarDarkFontAboveR()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFontAboveR()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDarkAboveR()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Activity;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    instance-of v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/view/View;Z)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :goto_0
    return-void
.end method

.method public static setFitsSystemWindows(Landroidx/fragment/app/Fragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    return-void
.end method

.method private setNavigationIconDark(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->l:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x10

    .line 14
    .line 15
    :cond_0
    return p1
.end method

.method private setNavigationIconDarkAboveR()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->l:Z

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v2, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private setPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    .line 9
    .line 10
    iput p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    .line 11
    .line 12
    iput p3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    .line 13
    .line 14
    iput p4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    .line 15
    .line 16
    return-void
.end method

.method private setSpecialBarDarkMode()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->k:Z

    .line 12
    .line 13
    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/gyf/immersionbar/b;->H:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 25
    .line 26
    const-string v2, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->l:Z

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 40
    .line 41
    iget v1, v0, Lcom/gyf/immersionbar/b;->C:I

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 52
    .line 53
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->k:Z

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method private setStatusBarDarkFont(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    or-int/lit16 p1, p1, 0x2000

    .line 8
    .line 9
    :cond_0
    return p1
.end method

.method private setStatusBarDarkFontAboveR()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/gyf/immersionbar/i;->a(Landroid/view/ViewGroup;)Landroid/view/WindowInsetsController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->k:Z

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x2000

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->unsetSystemUiFlag(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {v0, v2, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1, v2}, Landroidx/core/view/r2;->a(Landroid/view/WindowInsetsController;II)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    .line 1
    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_5

    .line 5
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_4

    .line 7
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    :cond_4
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 10
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setStatusBarView(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    .line 1
    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_7

    .line 5
    sget v4, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-nez v4, :cond_4

    .line 7
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    :cond_4
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v5, :cond_6

    if-ne v7, v6, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    add-int/2addr v7, v5

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 12
    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 13
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 14
    :cond_6
    :goto_1
    new-instance v5, Lcom/gyf/immersionbar/ImmersionBar$1;

    invoke-direct {v5, v4, v2, p1, v3}, Lcom/gyf/immersionbar/ImmersionBar$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;ILjava/lang/Integer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 15
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBar(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-gez p1, :cond_1

    move p1, p0

    .line 1
    :cond_1
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_5

    .line 5
    sget v4, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_4

    .line 7
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8
    :cond_4
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p1

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 12
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V
    .locals 1

    .line 13
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroidx/fragment/app/Fragment;I[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroidx/fragment/app/Fragment;[Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;[Landroid/view/View;)V

    return-void
.end method

.method private setupNavBarView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v1, Lcom/gyf/immersionbar/d;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/gyf/immersionbar/a;->n()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/gyf/immersionbar/a;->d()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x50

    .line 47
    .line 48
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/gyf/immersionbar/a;->g()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    const v2, 0x800005

    .line 63
    .line 64
    .line 65
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 71
    .line 72
    iget v2, v1, Lcom/gyf/immersionbar/b;->b:I

    .line 73
    .line 74
    iget v3, v1, Lcom/gyf/immersionbar/b;->s:I

    .line 75
    .line 76
    iget v1, v1, Lcom/gyf/immersionbar/b;->f:F

    .line 77
    .line 78
    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 86
    .line 87
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->H:Z

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-boolean v2, v1, Lcom/gyf/immersionbar/b;->I:Z

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->i:Z

    .line 96
    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method private setupStatusBarView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v1, Lcom/gyf/immersionbar/d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/view/View;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/gyf/immersionbar/a;->k()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 v4, 0x30

    .line 32
    .line 33
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 50
    .line 51
    iget-boolean v3, v1, Lcom/gyf/immersionbar/b;->q:Z

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget v2, v1, Lcom/gyf/immersionbar/b;->a:I

    .line 56
    .line 57
    iget v3, v1, Lcom/gyf/immersionbar/b;->r:I

    .line 58
    .line 59
    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Lz0/b;->d(IIF)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget v3, v1, Lcom/gyf/immersionbar/b;->a:I

    .line 70
    .line 71
    iget v1, v1, Lcom/gyf/immersionbar/b;->d:F

    .line 72
    .line 73
    invoke-static {v3, v2, v1}, Lz0/b;->d(IIF)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public static showStatusBar(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private transformView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/view/View;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 48
    .line 49
    iget v3, v3, Lcom/gyf/immersionbar/b;->a:I

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 56
    .line 57
    iget v4, v4, Lcom/gyf/immersionbar/b;->r:I

    .line 58
    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/Integer;

    .line 94
    .line 95
    move-object v6, v4

    .line 96
    move-object v4, v3

    .line 97
    move-object v3, v6

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    if-eqz v2, :cond_0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 102
    .line 103
    iget v1, v1, Lcom/gyf/immersionbar/b;->u:F

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    sub-float/2addr v1, v5

    .line 107
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    cmpl-float v1, v1, v5

    .line 112
    .line 113
    if-nez v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 124
    .line 125
    iget v4, v4, Lcom/gyf/immersionbar/b;->d:F

    .line 126
    .line 127
    invoke-static {v1, v3, v4}, Lz0/b;->d(IIF)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 144
    .line 145
    iget v4, v4, Lcom/gyf/immersionbar/b;->u:F

    .line 146
    .line 147
    invoke-static {v1, v3, v4}, Lz0/b;->d(IIF)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_3
    return-void
.end method

.method private updateBarConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->a()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private updateBarParams()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->adjustDarkModeParams()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 26
    .line 27
    :cond_2
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->F:Z

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->d(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/gyf/immersionbar/q;->c(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gyf/immersionbar/q;->c(Landroid/app/Activity;Landroid/app/Dialog;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->d(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/DialogFragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->e(Landroid/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroidx/fragment/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/DialogFragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroidx/fragment/app/DialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gyf/immersionbar/q;->f(Landroidx/fragment/app/Fragment;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, v0, Lcom/gyf/immersionbar/b;->r:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 4
    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 5
    invoke-static {v0, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 7
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 8
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 9
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v1, v1, Lcom/gyf/immersionbar/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p2, p2, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addViewSupportTransformColorInt(Landroid/view/View;II)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object p2, p2, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applySystemFits(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->B:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->setFitsSystemWindows(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public autoDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->m:Z

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->o:F

    .line 4
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->n:Z

    .line 5
    iput p2, v0, Lcom/gyf/immersionbar/b;->p:F

    return-object p0
.end method

.method public autoNavigationBarDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoNavigationBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoNavigationBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->n:Z

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->p:F

    return-object p0
.end method

.method public autoStatusBarDarkModeEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->autoStatusBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public autoStatusBarDarkModeEnable(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->m:Z

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->o:F

    return-object p0
.end method

.method public barAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->d:F

    .line 4
    .line 5
    iput p1, v0, Lcom/gyf/immersionbar/b;->e:F

    .line 6
    .line 7
    iput p1, v0, Lcom/gyf/immersionbar/b;->f:F

    .line 8
    .line 9
    iput p1, v0, Lcom/gyf/immersionbar/b;->g:F

    .line 10
    .line 11
    return-object p0
.end method

.method public barColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 4
    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 2
    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    return-object p0
.end method

.method public barColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 4
    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 5
    iput p2, v0, Lcom/gyf/immersionbar/b;->d:F

    .line 6
    iput p2, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public barColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 8
    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 9
    iput p2, v0, Lcom/gyf/immersionbar/b;->r:I

    .line 10
    iput p2, v0, Lcom/gyf/immersionbar/b;->s:I

    .line 11
    iput p3, v0, Lcom/gyf/immersionbar/b;->d:F

    .line 12
    iput p3, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public barColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public barColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->r:I

    .line 4
    .line 5
    iput p1, v0, Lcom/gyf/immersionbar/b;->s:I

    .line 6
    .line 7
    return-object p0
.end method

.method public barEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->K:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public fitsLayoutOverlapEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->B:Z

    .line 4
    .line 5
    return-object p0
.end method

.method fitsParentBarKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->b()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/gyf/immersionbar/f;->d()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->y:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public fitsSystemWindows(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZI)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindows(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 7
    invoke-static {v0, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindowsInt(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public fitsSystemWindowsInt(ZIIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->y:Z

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->v:I

    .line 4
    iput p3, v0, Lcom/gyf/immersionbar/b;->w:I

    .line 5
    iput p4, v0, Lcom/gyf/immersionbar/b;->x:F

    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-static {p2, p3, p4}, Lz0/b;->d(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    .line 2
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, p1, Lcom/gyf/immersionbar/b;->C:I

    iput v0, p1, Lcom/gyf/immersionbar/b;->D:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    .line 4
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, p1, Lcom/gyf/immersionbar/b;->C:I

    iput v0, p1, Lcom/gyf/immersionbar/b;->D:I

    return-object p0
.end method

.method public flymeOSStatusBarFontColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->C:I

    .line 4
    .line 5
    iput p1, v0, Lcom/gyf/immersionbar/b;->D:I

    .line 6
    .line 7
    return-object p0
.end method

.method public fullScreen(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->h:Z

    .line 4
    .line 5
    return-object p0
.end method

.method getActionBarHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    return v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method getBarConfig()Lcom/gyf/immersionbar/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/gyf/immersionbar/a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 15
    .line 16
    return-object v0
.end method

.method public getBarParams()Lcom/gyf/immersionbar/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    return-object v0
.end method

.method getFragment()Landroid/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method getPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    .line 2
    .line 3
    return v0
.end method

.method getPaddingLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    .line 2
    .line 3
    return v0
.end method

.method getPaddingRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    .line 2
    .line 3
    return v0
.end method

.method getPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    .line 2
    .line 3
    return v0
.end method

.method getSupportFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mTagMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/gyf/immersionbar/b;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 22
    .line 23
    :cond_0
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "tag\u4e0d\u80fd\u4e3a\u7a7a"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 4
    .line 5
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 14
    .line 15
    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    iput-boolean v0, p1, Lcom/gyf/immersionbar/b;->i:Z

    .line 28
    .line 29
    :cond_2
    return-object p0
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->K:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarParams()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsKeyboard()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->transformView()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method initialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 2
    .line 3
    return v0
.end method

.method isDialogFragment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 2
    .line 3
    return v0
.end method

.method isFragment()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 2
    .line 3
    return v0
.end method

.method public keyboardEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget v0, v0, Lcom/gyf/immersionbar/b;->G:I

    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->keyboardEnable(ZI)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public keyboardEnable(ZI)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->F:Z

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->G:I

    .line 4
    iput-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    return-object p0
.end method

.method public keyboardMode(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->G:I

    .line 4
    .line 5
    return-object p0
.end method

.method public navigationBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->f:F

    .line 4
    .line 5
    iput p1, v0, Lcom/gyf/immersionbar/b;->g:F

    .line 6
    .line 7
    return-object p0
.end method

.method public navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 4
    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    return-object p0
.end method

.method public navigationBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public navigationBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 5
    iput p2, v0, Lcom/gyf/immersionbar/b;->s:I

    .line 6
    iput p3, v0, Lcom/gyf/immersionbar/b;->f:F

    return-object p0
.end method

.method public navigationBarColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->s:I

    .line 4
    .line 5
    return-object p0
.end method

.method public navigationBarDarkIcon(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->l:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportNavigationIconDark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p2, p1, Lcom/gyf/immersionbar/b;->f:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget p2, p1, Lcom/gyf/immersionbar/b;->g:F

    iput p2, p1, Lcom/gyf/immersionbar/b;->f:F

    :goto_0
    return-object p0
.end method

.method public navigationBarEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->H:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public navigationBarWithEMUI3Enable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 8
    .line 9
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->J:Z

    .line 10
    .line 11
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->I:Z

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public navigationBarWithKitkatEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->I:Z

    .line 4
    .line 5
    return-object p0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 23
    .line 24
    iget-boolean p1, p1, Lcom/gyf/immersionbar/b;->I:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->cancelListener()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 15
    .line 16
    iput-boolean v2, v1, Lcom/gyf/immersionbar/b;->F:Z

    .line 17
    .line 18
    iget-object v1, v1, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 19
    .line 20
    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 21
    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 29
    .line 30
    return-void
.end method

.method public onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v0, Lcom/gyf/immersionbar/d;->b:I

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_8

    .line 10
    .line 11
    new-instance v0, Lcom/gyf/immersionbar/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/a;-><init>(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const/16 p1, 0x8

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    move v0, v2

    .line 41
    move v1, v0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 48
    .line 49
    const v3, 0x1020002

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->d()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 74
    .line 75
    :cond_2
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/gyf/immersionbar/a;->g()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 86
    .line 87
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 88
    .line 89
    iget-boolean p1, p1, Lcom/gyf/immersionbar/b;->i:Z

    .line 90
    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/a;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->n()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    const/16 v0, 0x50

    .line 108
    .line 109
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 112
    .line 113
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 114
    .line 115
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 116
    .line 117
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->h:Z

    .line 118
    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move v0, v2

    .line 123
    :goto_1
    move v1, v2

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    const v0, 0x800005

    .line 126
    .line 127
    .line 128
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    .line 130
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 131
    .line 132
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 133
    .line 134
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 135
    .line 136
    iget-boolean v1, v1, Lcom/gyf/immersionbar/b;->h:Z

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    move v0, v2

    .line 142
    :goto_2
    move v1, v0

    .line 143
    move v0, v2

    .line 144
    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    :cond_8
    return-void
.end method

.method onResume()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->J:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 35
    .line 36
    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public removeSupportAllView()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public removeSupportView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "View\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public reset()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/gyf/immersionbar/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 10
    .line 11
    return-object p0
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setBar()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x100

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsNotchScreen()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->initBarAboveLOLLIPOP(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFont(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDark(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBarDarkFontAboveR()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->initBarBelowLOLLIPOP()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarBelowR(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setSpecialBarDarkMode()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarAboveR()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/j;->c(Landroid/app/Application;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public setOnBarListener(Lcom/gyf/immersionbar/l;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method public setOnKeyboardListener(Lcom/gyf/immersionbar/m;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0
    .param p1    # Lcom/gyf/immersionbar/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setOnNavigationBarListener(Lcom/gyf/immersionbar/n;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iput-object p1, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 10
    .line 11
    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/j;->a(Lcom/gyf/immersionbar/n;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/gyf/immersionbar/j;->b()Lcom/gyf/immersionbar/j;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/j;->d(Lcom/gyf/immersionbar/n;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p1, Lcom/gyf/immersionbar/b;->L:Lcom/gyf/immersionbar/n;

    .line 44
    .line 45
    :cond_1
    :goto_0
    return-object p0
.end method

.method public statusBarAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->d:F

    .line 4
    .line 5
    iput p1, v0, Lcom/gyf/immersionbar/b;->e:F

    .line 6
    .line 7
    return-object p0
.end method

.method public statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 4
    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColor(Ljava/lang/String;Ljava/lang/String;F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    return-object p0
.end method

.method public statusBarColorInt(IF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 3
    iput p2, v0, Lcom/gyf/immersionbar/b;->d:F

    return-object p0
.end method

.method public statusBarColorInt(IIF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 5
    iput p2, v0, Lcom/gyf/immersionbar/b;->r:I

    .line 6
    iput p3, v0, Lcom/gyf/immersionbar/b;->d:F

    return-object p0
.end method

.method public statusBarColorTransform(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransform(Ljava/lang/String;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorTransformEnable(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->q:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public statusBarColorTransformInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->r:I

    .line 4
    .line 5
    return-object p0
.end method

.method public statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->k:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportStatusBarDarkFont()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput p2, p1, Lcom/gyf/immersionbar/b;->d:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iget p2, p1, Lcom/gyf/immersionbar/b;->D:I

    iput p2, p1, Lcom/gyf/immersionbar/b;->C:I

    .line 6
    iget p2, p1, Lcom/gyf/immersionbar/b;->e:F

    iput p2, p1, Lcom/gyf/immersionbar/b;->d:F

    :goto_0
    return-object p0
.end method

.method public statusBarView(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarView(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarView(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->A:Landroid/view/View;

    .line 2
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_1
    return-object p0
.end method

.method public supportActionBar(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/gyf/immersionbar/b;->E:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public titleBar(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(IZ)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(ILandroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(IZ)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBar(Landroid/view/View;Z)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    .line 5
    iput-boolean p2, v0, Lcom/gyf/immersionbar/b;->q:Z

    return-object p0
.end method

.method public titleBarMarginTop(I)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(ILandroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 0

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public titleBarMarginTop(Landroid/view/View;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    iput-object p1, v0, Lcom/gyf/immersionbar/b;->z:Landroid/view/View;

    return-object p0
.end method

.method public transparentBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 5
    .line 6
    iput v1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->h:Z

    .line 10
    .line 11
    return-object p0
.end method

.method public transparentNavigationBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/gyf/immersionbar/b;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/gyf/immersionbar/b;->h:Z

    .line 8
    .line 9
    return-object p0
.end method

.method public transparentStatusBar()Lcom/gyf/immersionbar/ImmersionBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/gyf/immersionbar/b;->a:I

    .line 5
    .line 6
    return-object p0
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, v1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public viewAlpha(F)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/b;

    .line 2
    .line 3
    iput p1, v0, Lcom/gyf/immersionbar/b;->u:F

    .line 4
    .line 5
    return-object p0
.end method
