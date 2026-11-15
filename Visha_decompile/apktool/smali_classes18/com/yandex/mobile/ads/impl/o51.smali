.class public final Lcom/yandex/mobile/ads/impl/o51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/j3;

.field private final c:Lcom/yandex/mobile/ads/impl/g71;

.field private final d:Lcom/yandex/mobile/ads/impl/wo1;

.field private final e:Lcom/yandex/mobile/ads/impl/vr0;

.field private final f:Lcom/yandex/mobile/ads/impl/hc0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)V
    .locals 1

    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adClickable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderedTimer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forceImpressionTrackingListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o51;->a:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/o51;->b:Lcom/yandex/mobile/ads/impl/j3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/o51;->c:Lcom/yandex/mobile/ads/impl/g71;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/o51;->d:Lcom/yandex/mobile/ads/impl/wo1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o51;->e:Lcom/yandex/mobile/ads/impl/vr0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/o51;->f:Lcom/yandex/mobile/ads/impl/hc0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o51;->d:Lcom/yandex/mobile/ads/impl/wo1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/wo1;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o51;->e:Lcom/yandex/mobile/ads/impl/vr0;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vr0;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o51;->a:Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o51;->b:Lcom/yandex/mobile/ads/impl/j3;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o51;->a:Lcom/yandex/mobile/ads/impl/ig;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o51;->e:Lcom/yandex/mobile/ads/impl/vr0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o51;->c:Lcom/yandex/mobile/ads/impl/g71;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/j3;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/g71;)Lcom/yandex/mobile/ads/impl/gf0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gf0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o51;->f:Lcom/yandex/mobile/ads/impl/hc0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hc0;->a()V

    :cond_0
    return-void
.end method
