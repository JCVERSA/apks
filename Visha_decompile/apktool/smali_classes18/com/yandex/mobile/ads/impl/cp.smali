.class public final Lcom/yandex/mobile/ads/impl/cp;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private final e:Lcom/yandex/mobile/ads/impl/hc0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/j3;",
            "Lcom/yandex/mobile/ads/impl/g71;",
            "Lcom/yandex/mobile/ads/impl/wo1;",
            "Lcom/yandex/mobile/ads/impl/hc0;",
            ")V"
        }
    .end annotation

    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adClickable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderedTimer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forceImpressionTrackingListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cp;->a:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cp;->b:Lcom/yandex/mobile/ads/impl/j3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cp;->c:Lcom/yandex/mobile/ads/impl/g71;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cp;->d:Lcom/yandex/mobile/ads/impl/wo1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/cp;->e:Lcom/yandex/mobile/ads/impl/hc0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vr0;)Landroid/view/View$OnClickListener;
    .locals 8

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cp;->c:Lcom/yandex/mobile/ads/impl/g71;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g71;->f()Lcom/yandex/mobile/ads/impl/dp;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/cp;->a:Lcom/yandex/mobile/ads/impl/ig;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/cp;->b:Lcom/yandex/mobile/ads/impl/j3;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/cp;->c:Lcom/yandex/mobile/ads/impl/g71;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/cp;->d:Lcom/yandex/mobile/ads/impl/wo1;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/cp;->e:Lcom/yandex/mobile/ads/impl/hc0;

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/dp;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method
