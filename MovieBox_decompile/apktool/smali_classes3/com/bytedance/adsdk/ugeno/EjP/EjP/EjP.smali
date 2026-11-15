.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/EjP;
.super Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs Sj([Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
.end method
