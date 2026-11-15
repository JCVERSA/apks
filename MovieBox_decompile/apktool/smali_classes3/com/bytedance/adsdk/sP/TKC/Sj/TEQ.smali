.class public Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;
.super Lcom/bytedance/adsdk/sP/TKC/Sj/sef;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/TKC/Sj/sef<",
        "Lcom/bytedance/adsdk/sP/TKC/sP;",
        "Lcom/bytedance/adsdk/sP/TKC/sP;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Zq;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/sP/Zq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->Sj:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Zq;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public synthetic Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;->EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Zq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic TKC()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->TKC()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic sP()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->sP()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sef;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
