.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

.field private static final DEFAULT_DELAY_TIMEOUT:I = 0xc8

.field private static final HANDLER:Landroid/os/Handler;

.field public static final LONG_DURATION_TIMEOUT:J = 0xdacL

.field public static final MAX_CUSTOM_DURATION:I = 0xea60

.field public static final MIN_CUSTOM_DURATION:I = 0x3e8

.field public static final SHORT_DURATION_TIMEOUT:J = 0x7d0L

.field public static final SHOW_STRATEGY_TYPE_IMMEDIATELY:I = 0x0

.field public static final SHOW_STRATEGY_TYPE_QUEUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ToastStrategy"


# instance fields
.field private final mCancelMessageToken:Ljava/lang/Object;

.field private mLastShowToastMillis:J

.field private final mShowMessageToken:Ljava/lang/Object;

.field private mShowStrategyType:I

.field private mToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;",
            ">;"
        }
    .end annotation
.end field

.field private sApplication:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

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
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please don\'t pass non-existent toast show strategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method private final diyToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getGravity()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getXOffset()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getYOffset()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setGravity(III)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getHorizontalMargin()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getVerticalMargin()F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setMargin(FF)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final generateToastWaitMillis(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x3e8

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    const-wide/16 v0, 0x5dc

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_1
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method private final getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_toast_success:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_toast_error:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_progress:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method private final isSupportToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)Z
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v0, 0x1e

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 21
    .line 22
    if-ge p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method


# virtual methods
.method public cancelToast()V
    .locals 5

    .line 1
    const-string v0, "ToastStrategy"

    .line 2
    .line 3
    const-string v1, "cancelToast"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    new-instance v3, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public createToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;"
        }
    .end annotation

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createToast"

    .line 7
    .line 8
    const-string v1, "ToastStrategy"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;->getInstance()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->getForegroundActivity()Landroid/app/Activity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v2, "create toast with foreground activity"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ActivityToast;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityToast;-><init>(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "create system toast!"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;-><init>(Landroid/app/Application;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->isSupportToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0, v1, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->diyToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "please provide a application for registerStrategy"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "registerStrategy "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ToastStrategy"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    .line 24
    .line 25
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;->getInstance()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->register(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 6

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "showToast mShowStrategyType: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "ToastStrategy"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    .line 31
    .line 32
    const/16 v1, 0xc8

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDelayMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    add-long/2addr v4, v2

    .line 52
    int-to-long v1, v1

    .line 53
    add-long/2addr v4, v1

    .line 54
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, 0x1

    .line 66
    if-ne v0, v2, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDelayMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    add-long/2addr v4, v2

    .line 77
    int-to-long v0, v1

    .line 78
    add-long/2addr v4, v0

    .line 79
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->generateToastWaitMillis(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mLastShowToastMillis:J

    .line 84
    .line 85
    add-long/2addr v2, v0

    .line 86
    cmp-long v0, v4, v2

    .line 87
    .line 88
    if-gez v0, :cond_1

    .line 89
    .line 90
    move-wide v4, v2

    .line 91
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    .line 92
    .line 93
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;

    .line 94
    .line 95
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0, v1, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 101
    .line 102
    .line 103
    iput-wide v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mLastShowToastMillis:J

    .line 104
    .line 105
    :cond_2
    :goto_0
    return-void
.end method
