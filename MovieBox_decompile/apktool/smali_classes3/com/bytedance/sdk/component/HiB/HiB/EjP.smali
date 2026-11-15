.class public Lcom/bytedance/sdk/component/HiB/HiB/EjP;
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

    .line 7
    const-string v0, "cache_policy"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->HiB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/TEQ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/TEQ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/vS;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/vS;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
