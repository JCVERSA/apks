.class public final Lcom/yandex/mobile/ads/impl/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pl;

.field private final b:Lcom/yandex/mobile/ads/impl/o5;

.field private final c:Lcom/yandex/mobile/ads/impl/oe2;

.field private final d:Lcom/yandex/mobile/ads/impl/tj1;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/tj1;)V
    .locals 1

    const-string v0, "bindingControllerHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlaybackStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDurationHolder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionProviderHolder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fb;->a:Lcom/yandex/mobile/ads/impl/pl;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fb;->b:Lcom/yandex/mobile/ads/impl/o5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fb;->c:Lcom/yandex/mobile/ads/impl/oe2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fb;->d:Lcom/yandex/mobile/ads/impl/tj1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/fb;->e:Z

    return p0
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fb;->a:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pl;->a()Lcom/yandex/mobile/ads/impl/ll;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fb;->d:Lcom/yandex/mobile/ads/impl/tj1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tj1;->b()Lcom/yandex/mobile/ads/impl/oi1;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/fb;->e:Z

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fb;->b:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oi1;->a()J

    move-result-wide v3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fb;->c:Lcom/yandex/mobile/ads/impl/oe2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oe2;->a()J

    move-result-wide v5

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fb;->b:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb;->a:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pl;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ll;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ll;->a()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
