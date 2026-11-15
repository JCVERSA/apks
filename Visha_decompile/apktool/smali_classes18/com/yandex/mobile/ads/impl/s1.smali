.class public final Lcom/yandex/mobile/ads/impl/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Landroid/content/Intent;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/c1;)Lcom/yandex/mobile/ads/impl/m1;
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rootLayout"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventController"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "window"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p7, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/r1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/u0;

    invoke-virtual {p7}, Lcom/yandex/mobile/ads/impl/c1;->b()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/yandex/mobile/ads/impl/u0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    invoke-direct {p0, p1, p7, p2}, Lcom/yandex/mobile/ads/impl/r1;-><init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/c1;Lcom/yandex/mobile/ads/impl/u0;)V

    return-object p0
.end method
