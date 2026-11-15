.class public final Lcom/yandex/mobile/ads/impl/m61$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gk0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/m61;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/m61;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m61;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m61$a;->a:Lcom/yandex/mobile/ads/impl/m61;

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
    .locals 1
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
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m61$a;->a:Lcom/yandex/mobile/ads/impl/m61;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/m61;->b(Lcom/yandex/mobile/ads/impl/m61;)Lcom/yandex/mobile/ads/impl/sj0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/sj0;->a(Ljava/util/Map;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m61$a;->a:Lcom/yandex/mobile/ads/impl/m61;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/m61;->c(Lcom/yandex/mobile/ads/impl/m61;)Lcom/yandex/mobile/ads/impl/dc1;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/dc1;->a()V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61$a;->a:Lcom/yandex/mobile/ads/impl/m61;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/m61;->a(Lcom/yandex/mobile/ads/impl/m61;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ut;

    .line 6
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/ut;->onFinishLoadingImages()V

    goto :goto_0

    :cond_0
    return-void
.end method
