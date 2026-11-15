.class public Lcom/bytedance/adsdk/sP/TKC/sP/Zq;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

.field private final HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

.field private final Sj:Z

.field private final TKC:Ljava/lang/String;

.field private final sP:Landroid/graphics/Path$FillType;

.field private final vS:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->TKC:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->Sj:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->sP:Landroid/graphics/Path$FillType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->vS:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->sP:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->vS:Z

    .line 2
    .line 3
    return v0
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    .line 2
    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/Jcg;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/Zq;)V

    return-object p2
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapeFill{color=, fillEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Zq;->Sj:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
