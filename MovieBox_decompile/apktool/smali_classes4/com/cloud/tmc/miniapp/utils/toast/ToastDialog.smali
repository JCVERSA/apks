.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "ToastDialog"


# instance fields
.field private volatile loadingAnimatorPlaying:Z

.field private final loadingAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private mGlobalShow:Z

.field private final mShowMessageToken:Ljava/lang/Object;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 5
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/toast/a;

    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/utils/toast/a;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 6
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/toast/b;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/utils/toast/b;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 5

    .line 1
    const-string v0, "$toast"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getLongDuration()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getShortDuration()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const v3, 0xea60

    .line 43
    .line 44
    .line 45
    if-gt v2, v3, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x3e8

    .line 48
    .line 49
    if-ge v2, v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    int-to-long v2, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getShortDuration()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    :goto_1
    add-long/2addr v0, v2

    .line 59
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const-string v3, "ToastDialog"

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const-string v2, "It\'s showing, will be update content"

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    .line 73
    .line 74
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 80
    .line 81
    invoke-direct {p1, p0, v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    .line 90
    .line 91
    new-instance v2, Lcom/cloud/tmc/miniapp/utils/toast/c;

    .line 92
    .line 93
    invoke-direct {v2, p1}, Lcom/cloud/tmc/miniapp/utils/toast/c;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 99
    .line 100
    .line 101
    const-string p0, "show runnable is running"

    .line 102
    .line 103
    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private static final _init_$lambda$4(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "ToastDialog"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "It\'s showing, will be dismissed"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string p0, "cancel runnable is running"

    .line 25
    .line 26
    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$cancelAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancelAnimator()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getMGlobalShow$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->_init_$lambda$4(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->_init_$lambda$3(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final cancelAnimator()V
    .locals 2

    .line 1
    const-string v0, "ToastDialog"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "cancelAnimator"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private final isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private final isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 3

    .line 1
    const-string v0, "ToastDialog"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "startAnimator"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->findIconView(Landroid/view/View;)Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string v1, "rotation"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [F

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "ofFloat(it, \"rotation\", 0F, 360F)"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0x258

    .line 41
    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getGravity()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getXOffset()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setXOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getYOffset()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setYOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getAnimationId()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 63
    .line 64
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;

    .line 65
    .line 66
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnCreateListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 74
    .line 75
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$2;

    .line 76
    .line 77
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$2;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 85
    .line 86
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;

    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    const-string v0, "ToastDialog"

    .line 2
    .line 3
    const-string v1, "cancel toast dialog"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isMainThread()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final isShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final show()V
    .locals 2

    .line 1
    const-string v0, "ToastDialog"

    .line 2
    .line 3
    const-string v1, "show toast dialog"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isMainThread()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
