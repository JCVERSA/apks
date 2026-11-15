.class public final Lcom/mgmi/ads/api/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ads/api/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/f;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;ZI)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mgmi/ads/api/a/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgmi/ads/api/a/d;",
            "Landroid/content/Context;",
            "ZI)V"
        }
    .end annotation

    invoke-static {p4}, Lfyd;->e(Landroid/content/Context;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAds boot ad start:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "BootAdsloader"

    invoke-static {v1, p5}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/4 v1, 0x1

    invoke-virtual {p5, v1}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    invoke-static {}, Lcom/mgmi/f/f;->l()Ljava/lang/String;

    move-result-object p5

    iget-object v2, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    new-instance v3, Lcom/mgmi/ads/api/a/f$a$1;

    invoke-direct {v3, p0, p1, p6}, Lcom/mgmi/ads/api/a/f$a$1;-><init>(Lcom/mgmi/ads/api/a/f$a;Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/mgmi/ads/api/a/f;->v:Lcom/mgadplus/netlib/base/b;

    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/mgmi/trace/a;->a(Ljava/lang/String;)V

    invoke-static {p4}, Lfyd;->e(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p5, Lcom/mgadplus/netlib/a/a;

    invoke-direct {p5, p1}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcom/mgadplus/netlib/a/a;->a(Ljava/util/Map;)Lcom/mgadplus/netlib/a/a;

    move-result-object p2

    invoke-interface {p3}, Lcom/mgmi/ads/api/a/d;->d()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mgadplus/netlib/a/a;->a(I)Lcom/mgadplus/netlib/a/a;

    move-result-object p2

    sget-object p3, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string p5, "auver"

    const-string v0, "v1"

    invoke-virtual {p2, p5, v0, p3}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    iget-object p5, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    iget-object v0, p5, Lcom/mgmi/ads/api/a/e;->i:Ljava/lang/String;

    invoke-virtual {p5, p4, v0}, Lcom/mgmi/ads/api/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "Authentication"

    invoke-virtual {p2, v0, p5, p3}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    iget-object p3, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p3, v1}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    new-instance p3, Lcom/mgmi/ads/api/a/f$a$2;

    invoke-direct {p3, p0, p1, p6}, Lcom/mgmi/ads/api/a/f$a$2;-><init>(Lcom/mgmi/ads/api/a/f$a;Ljava/lang/String;I)V

    invoke-static {p4, p2, p3}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/16 p1, 0xbb9

    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    :goto_0
    const-string p0, "mgmiad"

    const-string p1, "BootAdsloader.requestAds"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const p1, 0xaae62

    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    :goto_1
    return-void
.end method
