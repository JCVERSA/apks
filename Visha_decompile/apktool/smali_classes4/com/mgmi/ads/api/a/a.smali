.class public Lcom/mgmi/ads/api/a/a;
.super Lcom/mgmi/ads/api/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/ads/api/a/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/mgmi/model/n;

    invoke-direct {v0}, Lcom/mgmi/model/n;-><init>()V

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/model/n;->a(Lcom/mgmi/g/a;)Lcom/mgmi/model/n;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->o()Lcom/mgmi/platform/view/a;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    move-result-object p2

    const v0, 0x1ae1e

    .line 7
    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->c(I)Lcom/mgmi/model/n;

    move-result-object p2

    const/16 v0, 0x1126

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->a(I)Lcom/mgmi/model/n;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/mgmi/model/n;->b(I)Lcom/mgmi/model/n;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/mgmi/model/n;->a(Ljava/lang/String;)Lcom/mgmi/model/n;

    move-result-object p0

    .line 8
    new-instance p2, Lcom/mgmi/platform/view/a;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/mgmi/platform/view/a;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/mgmi/model/n;->a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/model/n;

    .line 9
    invoke-static {p1, p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->a()V

    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;)V
    .locals 1

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/app/live/float"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/a$a;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/mgmi/ads/api/a/a$1;

    invoke-direct {v0, p0, p2}, Lcom/mgmi/ads/api/a/a$1;-><init>(Lcom/mgmi/ads/api/a/a;Lcom/mgmi/ads/api/a/a$a;)V

    const-string p2, "CommonVideoAdsloader"

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/b;Lcom/mgmi/ads/api/a/d;)V
    .locals 0

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Lcom/mgmi/net/bean/b;->b(Z)V

    const/4 p0, 0x4

    .line 11
    invoke-virtual {p1, p0}, Lcom/mgmi/net/bean/b;->a(I)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->c()V

    return-void
.end method
