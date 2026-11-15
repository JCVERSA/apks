.class public Lcom/mgtv/a/b/e;
.super Lcom/mgtv/a/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/b/a/a<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->q()V

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/b;->a(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
