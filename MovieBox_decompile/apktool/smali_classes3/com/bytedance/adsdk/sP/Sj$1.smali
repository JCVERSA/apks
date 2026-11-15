.class Lcom/bytedance/adsdk/sP/Sj$1;
.super Lcom/bytedance/adsdk/sP/Zq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/Sj;->sP()Lcom/bytedance/adsdk/sP/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Zq<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Zq;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected Sj()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    iget v0, v0, Lcom/bytedance/adsdk/sP/Sj;->sP:I

    return v0
.end method

.method protected Sj(Ljava/lang/Object;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj;->Sj(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected Sj(II)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    iget-object p2, p2, Lcom/bytedance/adsdk/sP/Sj;->Sj:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected Sj(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj;->TKC(I)Ljava/lang/Object;

    return-void
.end method

.method protected TKC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/Sj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected sP()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "not a map"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
