.class Lcom/bytedance/sdk/openadsdk/activity/vS$3;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sU()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;->Sj:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "fullscreen_interstitial_ad"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    const-string v3, "executeFullVideoCallback execute throw Exception : "

    .line 30
    .line 31
    aput-object v3, v2, v0

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    aput-object v1, v2, v0

    .line 35
    .line 36
    const-string v0, "Scene"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
