.class public Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;
.super Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
.source "source.java"


# instance fields
.field private Dq:Lcom/bytedance/adsdk/ugeno/core/aa;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ib()Lcom/bytedance/adsdk/ugeno/core/aa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;->Dq:Lcom/bytedance/adsdk/ugeno/core/aa;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->Jcg:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
