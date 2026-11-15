.class Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "track_url"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;-><init>(Lcom/bytedance/sdk/component/Jcg/sP;)V

    return-object v1
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
