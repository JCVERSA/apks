.class public final Lcom/yandex/mobile/ads/impl/ej1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gt;J)V
    .locals 1

    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ej1;->a:Lcom/yandex/mobile/ads/impl/gt;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/ej1;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ej1;->a:Lcom/yandex/mobile/ads/impl/gt;

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ej1;->b:J

    return-wide v0
.end method
