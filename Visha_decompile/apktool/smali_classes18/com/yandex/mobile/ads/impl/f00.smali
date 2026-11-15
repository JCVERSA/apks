.class public final Lcom/yandex/mobile/ads/impl/f00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gv0$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/gv0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/gv0$a;->c:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/w01;->c(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/f92;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMCodecAdapterFactory"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/et0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hh$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/hh$a;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/hh$a;->b(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/hh;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/x32$a;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/x32$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/x32$a;->a(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/gv0;

    move-result-object p0

    return-object p0
.end method
