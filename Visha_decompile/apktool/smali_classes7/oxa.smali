.class public Loxa;
.super Lvec;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Loxa;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getInstance()Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->init(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method
