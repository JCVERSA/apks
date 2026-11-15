.class public final Lcom/yandex/mobile/ads/impl/un0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gk0;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/tn0;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/yandex/mobile/ads/impl/sj0;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/tn0$a;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tn0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/eo0;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/un0;->a:Lcom/yandex/mobile/ads/impl/tn0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/un0;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/un0;->c:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/un0;->d:Lcom/yandex/mobile/ads/impl/tn0$a;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/un0;->e:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "images"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/un0;->a:Lcom/yandex/mobile/ads/impl/tn0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/tn0;->a(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->q:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/un0;->a:Lcom/yandex/mobile/ads/impl/tn0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/tn0;->b(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/un0;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/bh;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/un0;->a:Lcom/yandex/mobile/ads/impl/tn0;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/tn0;->c(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/ck0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/ck0;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/un0;->c:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/sj0;->a(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/un0;->d:Lcom/yandex/mobile/ads/impl/tn0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/un0;->e:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/tn0$a;->h(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method
