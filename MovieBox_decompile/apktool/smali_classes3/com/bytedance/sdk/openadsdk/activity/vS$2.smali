.class Lcom/bytedance/sdk/openadsdk/activity/vS$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:I

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:I

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->sP:Z

    .line 6
    .line 7
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->TKC:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->HiB:I

    .line 12
    .line 13
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->vS:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sU()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->Sj:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->sP:Z

    .line 17
    .line 18
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->TKC:I

    .line 19
    .line 20
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->EjP:Ljava/lang/String;

    .line 21
    .line 22
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->HiB:I

    .line 23
    .line 24
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/vS$2;->vS:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    const/4 v2, 0x3

    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v3, "rewarded_video"

    .line 35
    .line 36
    aput-object v3, v2, v0

    .line 37
    .line 38
    const-string v0, "executeRewardVideoCallback execute throw Exception : "

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    aput-object v0, v2, v3

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    const-string v0, "Scene"

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
