.class Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->Sj:Ljava/lang/String;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ$1;->Sj:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeDisLikeClosedCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 35
    :goto_1
    const-string v1, "TTDislikeManager"

    .line 36
    .line 37
    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
