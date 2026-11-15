.class public Lcom/bytedance/sdk/component/HiB/HiB/TKC;
.super Lcom/bytedance/sdk/component/HiB/HiB/Sj;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/HiB/Sj;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    .line 6
    const-string v0, "generate_key"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS()Lcom/bytedance/sdk/component/HiB/aa;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/aa;->Sj(Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/aa;->sP(Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/Jcg;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
