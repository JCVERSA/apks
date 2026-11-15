.class public final Lcom/yandex/mobile/ads/impl/gc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ov1$a;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/lc2;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field

.field final synthetic d:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lc2;Ljava/lang/Object;Lc74;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lc2;",
            "Ljava/lang/Object;",
            "Lc74;",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gc2;->a:Lcom/yandex/mobile/ads/impl/lc2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gc2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gc2;->c:Lc74;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gc2;->d:Le74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 7
    const-string v0, "advertisingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gc2;->a:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lc2;->a(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gc2;->a:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/lc2;->d(Lcom/yandex/mobile/ads/impl/lc2;)Ljava/util/LinkedHashSet;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/gc2;->b:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gc2;->c:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gc2;->a:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lc2;->f(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/tb2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Internal error occured while loading ads."

    .line 5
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/sb2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gc2;->d:Le74;

    invoke-interface {p0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
