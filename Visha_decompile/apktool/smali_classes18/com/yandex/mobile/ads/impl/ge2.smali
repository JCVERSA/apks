.class public final Lcom/yandex/mobile/ads/impl/ge2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ap;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yb1;

.field private final b:Lcom/yandex/mobile/ads/impl/uu;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/uu;)V
    .locals 1

    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ge2;->a:Lcom/yandex/mobile/ads/impl/yb1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ge2;->b:Lcom/yandex/mobile/ads/impl/uu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ge2;->a:Lcom/yandex/mobile/ads/impl/yb1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/fe2;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ge2;->b:Lcom/yandex/mobile/ads/impl/uu;

    invoke-direct {v1, p1, p2, v2}, Lcom/yandex/mobile/ads/impl/fe2;-><init>(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;Lcom/yandex/mobile/ads/impl/uu;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/to;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/to;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ge2;->a:Lcom/yandex/mobile/ads/impl/yb1;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ge2;->a:Lcom/yandex/mobile/ads/impl/yb1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yb1;->b()Lcom/yandex/mobile/ads/impl/af2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/af2;->a()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
