.class public final Lcom/yandex/mobile/ads/impl/n31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g31;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g31;J)V
    .locals 1

    const-string v0, "multiBannerAutoSwipeController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n31;->a:Lcom/yandex/mobile/ads/impl/g31;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/n31;->b:J

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n31;->a:Lcom/yandex/mobile/ads/impl/g31;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/n31;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/g31;->a(J)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n31;->a:Lcom/yandex/mobile/ads/impl/g31;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g31;->b()V

    return-void
.end method
