.class public final Lcom/yandex/mobile/ads/impl/pp0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/pp0$a;,
        Lcom/yandex/mobile/ads/impl/pp0$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/aj;)Lcom/yandex/mobile/ads/impl/op0;
    .locals 1

    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/pp0$b;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/pp0$b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/pp0$a;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/pp0$a;-><init>(Lcom/yandex/mobile/ads/impl/aj;)V

    :goto_0
    return-object p0
.end method
