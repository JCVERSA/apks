.class public Lcom/bytedance/adsdk/sP/TKC/EjP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final EjP:D

.field private final HiB:Ljava/lang/String;

.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:D

.field private final sP:C

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj:Ljava/util/List;

    .line 5
    .line 6
    iput-char p2, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->sP:C

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->TKC:D

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->EjP:D

    .line 11
    .line 12
    iput-object p7, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->HiB:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->vS:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static Sj(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public Sj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/uvD;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->sP:C

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->vS:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->HiB:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/EjP;->Sj(CLjava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sP()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/adsdk/sP/TKC/EjP;->EjP:D

    .line 2
    .line 3
    return-wide v0
.end method
