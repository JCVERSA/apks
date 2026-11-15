.class public final Lcom/yandex/mobile/ads/impl/e71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/to;

.field private final b:Lcom/yandex/mobile/ads/impl/y51;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yandex/mobile/ads/impl/to;Lcom/yandex/mobile/ads/impl/y51;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onClickListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickAreaVerificationListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdHighlightingController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e71;->a:Lcom/yandex/mobile/ads/impl/to;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/e71;->b:Lcom/yandex/mobile/ads/impl/y51;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e71;->a:Lcom/yandex/mobile/ads/impl/to;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/to;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e71;->b:Lcom/yandex/mobile/ads/impl/y51;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/y51;->b(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e71;->a:Lcom/yandex/mobile/ads/impl/to;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/to;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
