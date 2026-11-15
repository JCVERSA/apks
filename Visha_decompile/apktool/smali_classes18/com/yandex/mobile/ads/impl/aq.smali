.class public final Lcom/yandex/mobile/ads/impl/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m52;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/aq;->a:J

    return-wide v0
.end method

.method public final a(JJ)V
    .locals 0

    .line 2
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/aq;->b:J

    return-void
.end method

.method public final b()V
    .locals 4

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/aq;->a:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/aq;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/aq;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/aq;->b:J

    return-void
.end method
