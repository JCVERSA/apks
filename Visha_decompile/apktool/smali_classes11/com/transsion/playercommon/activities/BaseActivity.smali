.class public Lcom/transsion/playercommon/activities/BaseActivity;
.super Lcom/transsion/playercommon/activities/BaseFoldActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Lh27$b;


# static fields
.field static final EMPTY_FRAGMENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_UPDATE_THEME_BACKGROUND:I = 0x1

.field public static final PERMISSION_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field public static final PERMISSION_REQUEST_CODE_ALERT_WINDOW:I = 0xa

.field public static final PREFIX:Ljava/lang/String; = "AppTheme."

.field static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field final DEBUG:Z

.field protected mActivityNavigationColor:I

.field protected mActivityStatusBarColor:I

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mClearDimBgRunnable:Ljava/lang/Runnable;

.field private mCurrentThemeBackgroundKey:Ljava/lang/String;

.field private final mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

.field protected mForceShowSystemBar:Z

.field protected mFromSource:Ljava/lang/String;

.field protected mIsAutoRecover:Z

.field protected mIsGestureNavigationEnabled:Z

.field protected mIsInPictureInPictureMode:Z

.field protected mIsLoadCustomSkin:Z

.field protected mIsScreenLandscape:Z

.field protected mLastSystemUiVis:I

.field private mLastVolumeKeyCode:I

.field private mNotApplyBackground:Z

.field protected mNotifys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResBitmap:Landroid/graphics/Bitmap;

.field protected mResetNavigationColor:I

.field protected mResumed:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field protected mStatusPlayUiShow:Z

.field private final mUpdateHandler:Landroid/os/Handler;

.field private mVolumeUiDispatchPosted:Z

.field protected mWaterFallLeftEdgeSize:I

.field protected mWaterFallRightEdgeSize:I

.field protected osBgPrimaryColor:I

.field protected permissionDialog:Lcom/transsion/widgetslib/dialog/d;

.field protected permissionNewAudioDialog:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/activities/BaseActivity;->EMPTY_FRAGMENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResumed:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotApplyBackground:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastVolumeKeyCode:I

    new-instance v0, Lp80;

    invoke-direct {v0, p0}, Lp80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/playercommon/activities/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/activities/BaseActivity$3;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lq80;

    invoke-direct {v1}, Lq80;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic I(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->Z()V

    return-void
.end method

.method public static synthetic J(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic K(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/activities/BaseActivity;->b0(ZLcom/transsion/dbdata/beans/ThemeData;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/transsion/playercommon/activities/BaseActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic M(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->d0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic N(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;IIZ)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/playercommon/activities/BaseActivity;->a0(ZLcom/transsion/dbdata/beans/ThemeData;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/transsion/playercommon/activities/BaseActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->c0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic P(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->i0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/playercommon/activities/BaseActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->f0(Z)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->g0()V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/playercommon/activities/BaseActivity;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->e0(F)V

    return-void
.end method

.method public static synthetic T(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->h0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic U(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->j0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic V(Lcom/transsion/playercommon/activities/BaseActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skin setBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic h0(Landroid/os/Message;)Z
    .locals 0

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic i0(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfe7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final W(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->shouldApplyLegacySystemBarPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x400

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->hasLightStatusBarBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final X(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final Y(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hookAppStartingWindowState"

    const-class v2, Ljava/lang/String;

    const-class v3, Landroid/os/Bundle;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hookAppStartingWindowState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic Z()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWindowDimFlag(Z)V

    return-void
.end method

.method public final synthetic a0(ZLcom/transsion/dbdata/beans/ThemeData;IIZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p2, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p3, p4, p1}, Ltha;->f(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    if-eqz p5, :cond_3

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-static {}, Lpp3;->m()Z

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$attr;->custom_foldable_screen_window_background:I

    invoke-virtual {p2, v0, p1, p5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$attr;->custom_window_background:I

    invoke-virtual {p2, v0, p1, p5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p3, p4, p2}, Ltha;->g(Landroid/content/res/Resources;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public adaptForcedEdgeToEdge()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptForcedEdgeToEdge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->hasLightStatusBarBackground()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    invoke-static {v0, v4}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/activities/BaseActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/activities/BaseActivity$a;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public adaptGestureNavigation()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptGestureNavigation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-static {v0, v4}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/activities/BaseActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/activities/BaseActivity$b;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public adaptSystemUiBarColor()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isDarkMode()Z

    move-result v2

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v1, 0x2000

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResetNavigationColor:I

    invoke-virtual {v2, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getDarkMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isFollowSystemFont()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->X(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final synthetic b0(ZLcom/transsion/dbdata/beans/ThemeData;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 9

    new-instance p4, Landroid/util/DisplayMetrics;

    invoke-direct {p4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p4, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mCurrentThemeBackgroundKey:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lwn9;->c()Lwn9;

    move-result-object v0

    new-instance v8, Lm80;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lm80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;IIZ)V

    invoke-virtual {v0, p4, v8}, Lwn9;->d(Ljava/lang/String;Lwn9$a;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "beginTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    return-object p0
.end method

.method public beginTransactionAnimation()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "beginTransactionAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$anim;->activity_open_enter:I

    sget v1, Lcom/transsion/playercommon/R$anim;->activity_open_exit:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public beginTransactionBackAnimation()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "beginTransactionBackAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$anim;->activity_close_enter:I

    sget v1, Lcom/transsion/playercommon/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public final synthetic c0(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->finishSetWindowBackground()V

    :cond_0
    return-void
.end method

.method public callAlertWindowPermission(Z)V
    .locals 2

    const-string v0, "package:"

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v0, Lcom/transsion/utils/BaseConstant;->b:I

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x4d2

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    const-string p0, "BaseActivity"

    const-string p1, "callAlertWindowPermission"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public changeBackgroundForOnlineVideo(ZI)V
    .locals 0

    return-void
.end method

.method public changeTabOperationBarItem(I)V
    .locals 0

    return-void
.end method

.method public changeThemeWindowBackground()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->changeThemeWindowBackground()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mUpdateHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public clearWindowDimFlag(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lydc;->g()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lj80;->a(Lcom/transsion/playercommon/activities/BaseActivity;Z)Z

    :cond_1
    return-void
.end method

.method public convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    return-void
.end method

.method public delayAddWindowDimFlag(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-le v0, v1, :cond_2

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mClearDimBgRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lo80;

    invoke-direct {v0, p0}, Lo80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mClearDimBgRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mClearDimBgRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic e0(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->D(Landroid/content/Context;FZ)V

    :cond_0
    return-void
.end method

.method public enterCloudUploadEditMode(ZI)V
    .locals 0

    return-void
.end method

.method public enterEditMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public enterEditMode(ZIZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public final synthetic f0(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x(Z)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    new-instance v0, Ln80;

    invoke-direct {v0, p0, p1}, Ln80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;F)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BaseActivity"

    const-string v0, "playSoundByKeyEvent failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finishSetWindowBackground()V
    .locals 0

    return-void
.end method

.method public fitWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result v0

    const-string v1, "BaseActivity"

    const-string v2, ","

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->shouldApplyLegacySystemBarPadding()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fitWindowInsets(targetBaklava) ltrb="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v0, p2, Landroidx/core/graphics/Insets;->top:I

    iget v1, p2, Landroidx/core/graphics/Insets;->right:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p2, Landroidx/core/graphics/Insets;->top:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public forceShowSystemBar(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceShowSystemBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mForceShowSystemBar:Z

    return-void

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    if-nez p1, :cond_2

    or-int/lit16 p2, p2, 0x1700

    goto :goto_0

    :cond_2
    and-int/lit16 p2, p2, -0x1701

    :goto_0
    and-int/lit8 v0, p2, -0x4

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-nez v1, :cond_3

    and-int/lit8 v0, p2, -0x8

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mForceShowSystemBar:Z

    return-void
.end method

.method public final synthetic g0()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastVolumeKeyCode:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    const/16 v3, 0x19

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ll80;

    invoke-direct {v2, p0, v0}, Ll80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BaseActivity"

    const-string v1, "dispatch volume ui failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getDarkMode()I
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getDarkMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getDarkMode(Landroid/content/Context;)I
    .locals 7

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    const-string v0, "skin_theme"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_a

    .line 4
    iget-object v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget v3, Lcom/transsion/playercommon/R$string;->default_skin:I

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 7
    iget-object p0, v0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    iget p0, v0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    if-ne p0, v4, :cond_2

    :goto_0
    move p0, v4

    goto/16 :goto_4

    :cond_2
    move p0, v3

    goto/16 :goto_4

    .line 9
    :cond_3
    iget p0, v0, Lcom/transsion/dbdata/beans/ThemeData;->darkMode:I

    if-eqz p0, :cond_2

    goto :goto_0

    .line 10
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppTheme."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "style"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 11
    invoke-static {}, Lydc;->g()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v4

    :goto_2
    if-eqz v1, :cond_7

    .line 12
    sget-object v2, Lvha;->a:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Lqha;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    .line 15
    sget-object v1, Lvha;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Lqha;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_3
    return p0

    .line 18
    :cond_8
    sget v1, Lcom/transsion/playercommon/R$attr;->dark_theme:I

    invoke-static {p1, v0, v1}, Lvha;->m(Landroid/content/Context;Lcom/transsion/dbdata/beans/ThemeData;I)I

    move-result p1

    if-ne p1, p0, :cond_9

    goto :goto_4

    :cond_9
    if-nez p1, :cond_2

    goto :goto_0

    :cond_a
    :goto_4
    return p0
.end method

.method public getFragmentContentId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFragments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFromSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Lia7;->h(Landroid/content/res/Resources;Landroid/content/Context;)V

    return-object v0
.end method

.method public getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public hasLightStatusBarBackground()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->shouldApplyLegacySystemBarPadding()Z

    move-result p0

    return p0
.end method

.method public initNotify()V
    .locals 0

    return-void
.end method

.method public isAlertWindowPermissionGranted()Z
    .locals 0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isDarkMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFollowSystemFont()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isOnResumed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResumed:Z

    return p0
.end method

.method public isPictureModeAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android:picture_in_picture"

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportAdaptGestureNavigation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTargetSdkAtLeastBaklava()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x24

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x83

    :try_start_0
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "BaseActivity"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public loadSkin(Z)I
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "skin_theme"

    invoke-static {v0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading theme ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", setBackground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eqz v0, :cond_12

    iget-object v4, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/playercommon/R$string;->default_skin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v4, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v5

    :goto_0
    iput-boolean v7, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    const-string v9, "AppTheme."

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mCurrentThemeBackgroundKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading isNotLocalTheme:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "style"

    const/4 v10, 0x2

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v4, "setAppThemesetAppTheme resourceID2"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget-object v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    if-ne v1, v7, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v10

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v4

    if-eqz v4, :cond_7

    :try_start_0
    iget v4, v0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    if-ne v4, v7, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$drawable;->bg_window_skin_custom:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_4
    if-ne v4, v10, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$drawable;->bg_window_skin_custom_night:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    const-string v6, "loadSkin custom setBackground failed"

    invoke-static {v3, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_5
    iget v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->darkMode:I

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v7, v10

    :goto_4
    move v1, v7

    :cond_7
    :goto_5
    move v9, v5

    goto/16 :goto_b

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    move v9, v7

    goto :goto_6

    :cond_9
    move v9, v5

    :goto_6
    if-eqz v9, :cond_f

    invoke-static {}, Lydc;->g()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_7

    :cond_a
    move v11, v5

    goto :goto_8

    :cond_b
    :goto_7
    move v11, v7

    :goto_8
    if-eqz v11, :cond_c

    sget-object v12, Lvha;->a:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-static {v12}, Lqha;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    if-nez v11, :cond_d

    sget-object v11, Lvha;->b:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-static {v11}, Lqha;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    :goto_9
    const-string p1, "loadSkin no default this theme"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsLoadCustomSkin:Z

    new-instance p1, Lcom/transsion/dbdata/beans/ThemeData;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v3}, Lcom/transsion/dbdata/beans/ThemeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return v2

    :cond_d
    const-string v1, "setAppThemesetAppTheme resourceID"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$attr;->dark_theme:I

    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    move v7, v10

    :goto_a
    move v1, v7

    goto :goto_b

    :cond_f
    const-string v1, "no theme match"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v3

    if-eqz v3, :cond_11

    if-ne v1, v10, :cond_10

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_c

    :cond_10
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v3

    :goto_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    invoke-virtual {p0, p1, v8, v9, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->m0(ZZZLcom/transsion/dbdata/beans/ThemeData;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    return v1

    :cond_12
    :goto_d
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result p1

    if-eqz p1, :cond_13

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$drawable;->os_window_background:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception p0

    const-string p1, "loadSkin setBackground failed"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_e
    return v2
.end method

.method public final m0(ZZZLcom/transsion/dbdata/beans/ThemeData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lu80;

    invoke-direct {v0, p0, p2, p4, p3}, Lu80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;ZLcom/transsion/dbdata/beans/ThemeData;Z)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lv80;

    invoke-direct {p2, p0}, Lv80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    new-instance p0, Lw80;

    invoke-direct {p0}, Lw80;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public final n0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastVolumeKeyCode:I

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public needApplyBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotApplyBackground:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final o0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lpoc;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->W(Z)V

    invoke-static {}, Lgoc;->a()I

    move-result p0

    invoke-static {v0, p0}, Lds9;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->W(Z)V

    invoke-static {v0, v2}, Lroc;->a(Landroid/view/WindowInsetsController;I)V

    invoke-static {}, Lgoc;->a()I

    move-result p0

    invoke-static {v0, p0}, Las9;->a(Landroid/view/WindowInsetsController;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x83

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x45d

    new-array p2, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x84

    if-ne p1, p0, :cond_1

    invoke-static {p3}, Lm27;->e(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackNavigationStateChanged()V
    .locals 0

    return-void
.end method

.method public onConfigurationChangedOnlySuper(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsAutoRecover:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getDarkMode()I

    move-result v2

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-static {p0}, Lvha;->u(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    invoke-static {p0}, Lolb;->setWindowInset(Landroid/content/Context;)V

    invoke-static {}, Lolb;->f0()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$color;->os_bg_primary_oled_color:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$color;->os_bg_primary_color:I

    :goto_1
    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/transsion/playercommon/R$style;->OSThemeCurve:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/transsion/playercommon/R$style;->OSThemeNoCurve:I

    :goto_2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0}, Lpp3;->g(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mWaterFallLeftEdgeSize:I

    invoke-static {p0}, Lpp3;->h(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mWaterFallRightEdgeSize:I

    iget v4, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mWaterFallLeftEdgeSize:I

    invoke-virtual {p1, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->initNotify()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->registerNotify()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getStatusBarColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityStatusBarColor:I

    sget p1, Lcom/transsion/playercommon/R$color;->os_bg_primary_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResetNavigationColor:I

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate darkMode:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResetNavigationColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%08x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseActivity"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lpp3;->H:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isSupportAdaptGestureNavigation()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/transsion/utils/a;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isTargetSdkAtLeastBaklava()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->adaptForcedEdgeToEdge()V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->adaptGestureNavigation()V

    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lk80;

    invoke-direct {v0, p0}, Lk80;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->removeNotify()V

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->m(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->o()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->cast(Landroidx/fragment/app/Fragment;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFinishRequestPermission(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->n0(I)V

    return v0

    :cond_0
    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isOnResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->n0(I)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResumed:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mDispatchVolumeUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mVolumeUiDispatchPosted:Z

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->o()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsInPictureInPictureMode:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->permissionGranted(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->onFinishRequestPermission(IZ)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResumed:Z

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lm27;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->showNotificationPermissionDialog()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastSystemUiVis:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mLastSystemUiVis:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->setStatusPlayUiShow()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    :cond_1
    return-void
.end method

.method public permissionGranted(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerNotify()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lh27;->b(Lh27$b;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCurrentThemeCache()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mCurrentThemeBackgroundKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lwp0;->a()Lwp0;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mCurrentThemeBackgroundKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lwp0;->d(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mCurrentThemeBackgroundKey:Ljava/lang/String;

    invoke-static {}, Lwn9;->c()Lwn9;

    move-result-object v1

    invoke-virtual {v1}, Lwn9;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lwn9;->c()Lwn9;

    move-result-object v0

    invoke-virtual {v0}, Lwn9;->a()V

    :cond_0
    invoke-static {}, Lvha;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public removeNotify()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotifys:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lh27;->f(Lh27$b;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSplashSnapshot()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    const-string v2, "removeSplashSnapshot"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->Y(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public requestedChangeOrientation(I)V
    .locals 0

    return-void
.end method

.method public resetNavigationBarColor(Z)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mResetNavigationColor:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    return-void
.end method

.method public selectItems(Ljava/util/ArrayList;ZZ)V
    .locals 0

    return-void
.end method

.method public setDefaultWindowBackground()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_window_background:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BaseActivity"

    const-string v1, "setDefaultWindowBackground failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0

    return-void
.end method

.method public setForceNotApplyBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mNotApplyBackground:Z

    return-void
.end method

.method public setFromSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mFromSource:Ljava/lang/String;

    return-void
.end method

.method public setInConvertPage(Z)V
    .locals 0

    return-void
.end method

.method public setNavVisibility(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mStatusPlayUiShow:Z

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsInPictureInPictureMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mForceShowSystemBar:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->o0()V

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lpoc;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->W(Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    xor-int/2addr v2, v3

    invoke-static {v1, v2}, Ljv3;->a(Landroid/view/Window;Z)V

    invoke-static {}, Lgoc;->a()I

    move-result v1

    invoke-static {}, Lhoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lmoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lioc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lds9;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Ljv3;->a(Landroid/view/Window;Z)V

    invoke-static {}, Lgoc;->a()I

    move-result v1

    invoke-static {}, Lhoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lmoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lioc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lds9;->a(Landroid/view/WindowInsetsController;I)V

    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lroc;->a(Landroid/view/WindowInsetsController;I)V

    goto/16 :goto_5

    :cond_3
    iget-boolean v3, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-nez v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Lcom/transsion/playercommon/activities/BaseActivity;->W(Z)V

    if-eqz v3, :cond_5

    invoke-static {v0, v2}, Lroc;->a(Landroid/view/WindowInsetsController;I)V

    :cond_5
    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lgoc;->a()I

    move-result v2

    invoke-static {v0, v2}, Lds9;->a(Landroid/view/WindowInsetsController;I)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lhoc;->a()I

    move-result v1

    invoke-static {}, Lmoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lioc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Las9;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_5

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lhoc;->a()I

    move-result v1

    invoke-static {}, Lmoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lioc;->a()I

    move-result v2

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_8
    invoke-static {}, Lgoc;->a()I

    move-result v1

    invoke-static {}, Lhoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lmoc;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lioc;->a()I

    move-result v2

    goto :goto_2

    :goto_3
    invoke-static {v0, v1}, Las9;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v1, v0, 0x1700

    if-nez p1, :cond_b

    or-int/lit16 v0, v0, 0x1707

    goto :goto_4

    :cond_b
    and-int/lit8 v0, v1, -0x4

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    if-nez v2, :cond_c

    and-int/lit8 v0, v1, -0x8

    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavVisibility visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStatusPlayUiShow()V
    .locals 0

    return-void
.end method

.method public setThemeWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThemeWindowBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->finishSetWindowBackground()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWindowBackground(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "osBgPrimaryColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowFullScreen(Z)V

    return-void
.end method

.method public setWindowFullScreen(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    and-int/lit16 p1, v0, -0x2011

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "osBgPrimaryColor:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "BaseActivity"

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->osBgPrimaryColor:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    and-int/lit16 p1, v0, -0x2001

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showNotificationPermissionDialog()V
    .locals 5

    const-string v0, "BaseActivity"

    const-string v1, "showNotificationPermissionDialog "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->dialog_media_notification_permission:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->sniffer_notice_not_open:I

    new-instance v2, Lr80;

    invoke-direct {v2}, Lr80;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->sniffer_notice_go_setting:I

    new-instance v2, Ls80;

    invoke-direct {v2, p0}, Ls80;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lt80;

    invoke-direct {v1}, Lt80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    invoke-static {}, Lm27;->f()V

    invoke-static {}, Lm27;->g()V

    :cond_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public triggerMenuSwitch(I)V
    .locals 0

    return-void
.end method

.method public updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    .line 2
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const v2, 0x800005

    if-ne p2, v1, :cond_1

    .line 5
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lc39;->f()I

    move-result p2

    int-to-double v0, p2

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v3

    double-to-int p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public updateWindowDimFlag(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-le v0, v1, :cond_2

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mClearDimBgRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method
