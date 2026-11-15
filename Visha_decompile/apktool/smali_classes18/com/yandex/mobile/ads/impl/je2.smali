.class public final Lcom/yandex/mobile/ads/impl/je2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oe2;

.field private final b:Lcom/yandex/mobile/ads/impl/tj1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tj1;Lcom/yandex/mobile/ads/impl/oe2;)V
    .locals 1

    const-string v0, "videoDurationHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionProviderHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/je2;->a:Lcom/yandex/mobile/ads/impl/oe2;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/je2;->b:Lcom/yandex/mobile/ads/impl/tj1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/je2;->a:Lcom/yandex/mobile/ads/impl/oe2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oe2;->a()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/je2;->b:Lcom/yandex/mobile/ads/impl/tj1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tj1;->b()Lcom/yandex/mobile/ads/impl/oi1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oi1;->a()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
