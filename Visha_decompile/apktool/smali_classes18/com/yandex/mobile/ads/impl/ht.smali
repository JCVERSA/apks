.class public final Lcom/yandex/mobile/ads/impl/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ht$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ht$a;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ht$a;J)V
    .locals 1

    const-string v0, "positionType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ht;->a:Lcom/yandex/mobile/ads/impl/ht$a;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/ht;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ht$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ht;->a:Lcom/yandex/mobile/ads/impl/ht$a;

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ht;->b:J

    return-wide v0
.end method
