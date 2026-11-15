.class Landroidx/browser/customtabs/CustomTabsSession$1;
.super Landroid/support/customtabs/IEngagementSignalsCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsSession;->createEngagementSignalsCallbackWrapper(Landroidx/browser/customtabs/EngagementSignalsCallback;)Landroid/support/customtabs/IEngagementSignalsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsSession;

.field final synthetic val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;Landroidx/browser/customtabs/EngagementSignalsCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->this$0:Landroidx/browser/customtabs/CustomTabsSession;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/IEngagementSignalsCallback$Stub;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onVerticalScrollEvent$0(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onSessionEnded$2(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSession$1;->lambda$onGreatestScrollPercentageIncreased$1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onGreatestScrollPercentageIncreased$1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onSessionEnded$2(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onSessionEnded(ZLandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onVerticalScrollEvent$0(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/browser/customtabs/EngagementSignalsCallback;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    new-instance v1, Landroidx/browser/customtabs/c;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/c;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    new-instance v1, Landroidx/browser/customtabs/b;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/b;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsSession$1;->val$callback:Landroidx/browser/customtabs/EngagementSignalsCallback;

    new-instance v1, Landroidx/browser/customtabs/d;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/d;-><init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
