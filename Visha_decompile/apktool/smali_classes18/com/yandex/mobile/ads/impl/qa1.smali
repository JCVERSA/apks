.class public final Lcom/yandex/mobile/ads/impl/qa1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hp1;

.field private final b:Lcom/yandex/mobile/ads/impl/aw0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hp1;Lcom/yandex/mobile/ads/impl/aw0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayActionView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qa1;->a:Lcom/yandex/mobile/ads/impl/hp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qa1;->b:Lcom/yandex/mobile/ads/impl/aw0;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    instance-of p1, p3, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/aw0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qa1;->b:Lcom/yandex/mobile/ads/impl/aw0;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/hp1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qa1;->a:Lcom/yandex/mobile/ads/impl/hp1;

    return-object p0
.end method
