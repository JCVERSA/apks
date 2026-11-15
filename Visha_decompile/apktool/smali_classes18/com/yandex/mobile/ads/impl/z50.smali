.class public final Lcom/yandex/mobile/ads/impl/z50;
.super Lcom/yandex/mobile/ads/impl/sy1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sy1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 9

    new-instance p0, Lcom/yandex/mobile/ads/impl/k01;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I[B)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->p()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->p()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result p1

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    new-instance p1, Lcom/yandex/mobile/ads/impl/y50;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/y50;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/yandex/mobile/ads/impl/k01$b;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    return-object p0
.end method
