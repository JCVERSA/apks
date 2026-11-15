.class public Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
.super Landroidx/browser/customtabs/f;
.source "source.java"


# instance fields
.field private mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/sP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/customtabs/CustomTabsClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/act/sP;->Sj(Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/act/sP;->Sj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
