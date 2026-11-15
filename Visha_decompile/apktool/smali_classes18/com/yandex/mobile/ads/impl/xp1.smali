.class public final Lcom/yandex/mobile/ads/impl/xp1;
.super Lcom/yandex/mobile/ads/impl/yp1;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/cx0;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cx0;[BII)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xp1;->a:Lcom/yandex/mobile/ads/impl/cx0;

    iput p3, p0, Lcom/yandex/mobile/ads/impl/xp1;->b:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xp1;->c:[B

    iput p4, p0, Lcom/yandex/mobile/ads/impl/xp1;->d:I

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/yp1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/xp1;->b:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final a(Lokio/BufferedSink;)V
    .locals 2

    .line 2
    const-string v0, "sink"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xp1;->c:[B

    iget v1, p0, Lcom/yandex/mobile/ads/impl/xp1;->d:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/xp1;->b:I

    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/cx0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xp1;->a:Lcom/yandex/mobile/ads/impl/cx0;

    return-object p0
.end method
