.class public final Lcom/yandex/mobile/ads/impl/h91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gk0;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/sj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h91;->a:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h91;->a:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/sj0;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string p0, "images"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
