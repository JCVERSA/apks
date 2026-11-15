.class public final Lcom/yandex/mobile/ads/impl/yq1;
.super Lcom/yandex/mobile/ads/impl/zq1;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/cx0;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/cx0;Lokio/Buffer;)V
    .locals 0

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yq1;->a:Lcom/yandex/mobile/ads/impl/cx0;

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/yq1;->b:J

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yq1;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/zq1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/yq1;->b:J

    return-wide v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/cx0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yq1;->a:Lcom/yandex/mobile/ads/impl/cx0;

    return-object p0
.end method

.method public final c()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yq1;->c:Lokio/BufferedSource;

    return-object p0
.end method
