.class public final Lcom/yandex/mobile/ads/impl/kp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rg2;

.field private final b:Lcom/yandex/mobile/ads/impl/mp1;

.field private final c:Lcom/yandex/mobile/ads/impl/ip1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/mp1;Lcom/yandex/mobile/ads/impl/ip1;)V
    .locals 1

    const-string v0, "videoViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayViewConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kp1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kp1;->b:Lcom/yandex/mobile/ads/impl/mp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kp1;->c:Lcom/yandex/mobile/ads/impl/ip1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/kp1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/yb1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qa1;->b()Lcom/yandex/mobile/ads/impl/hp1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kp1;->c:Lcom/yandex/mobile/ads/impl/ip1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ip1;->b(Lcom/yandex/mobile/ads/impl/hp1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kp1;->b:Lcom/yandex/mobile/ads/impl/mp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/mp1;->a(Lcom/yandex/mobile/ads/impl/yb1;)V

    :cond_0
    return-void
.end method
