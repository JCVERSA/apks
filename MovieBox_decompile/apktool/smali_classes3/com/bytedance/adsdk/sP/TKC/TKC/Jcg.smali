.class public Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;
.super Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
.source "source.java"


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    .line 5
    .line 6
    new-instance p3, Lcom/bytedance/adsdk/sP/TKC/sP/uvD;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->sef()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "__container"

    .line 14
    .line 15
    invoke-direct {p3, v1, p2, v0}, Lcom/bytedance/adsdk/sP/TKC/sP/uvD;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    .line 19
    .line 20
    invoke-direct {p2, p1, p0, p3, p4}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/uvD;Lcom/bytedance/adsdk/sP/Jcg;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Ljava/util/List;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
