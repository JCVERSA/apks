.class public final Lcom/yandex/mobile/ads/impl/b00$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/b00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/b00$a;->a:J

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/b00$a;->b:J

    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Lcom/yandex/mobile/ads/impl/b00$a;->c:F

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/b00;
    .locals 8

    new-instance v7, Lcom/yandex/mobile/ads/impl/b00;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/b00$a;->a:J

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/b00$a;->b:J

    iget v5, p0, Lcom/yandex/mobile/ads/impl/b00$a;->c:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/b00;-><init>(JJFLo5d;)V

    return-object v7
.end method
