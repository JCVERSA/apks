.class public final Lcom/yandex/mobile/ads/impl/dw1;
.super Lcom/yandex/mobile/ads/impl/hx0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/dw1$a;
    }
.end annotation


# static fields
.field static final synthetic j:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/yandex/mobile/ads/impl/hx0;

.field private final e:Lcom/yandex/mobile/ads/impl/hx0;

.field private final f:Lcom/yandex/mobile/ads/impl/fz1;

.field private final g:Lcom/yandex/mobile/ads/impl/go1;

.field private final h:Lcom/yandex/mobile/ads/impl/go1;

.field private final i:Lcom/yandex/mobile/ads/impl/fw1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/yandex/mobile/ads/impl/dw1;

    const-string v2, "weakMediaView"

    const-string v3, "getWeakMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "weakMediaValue"

    const-string v5, "getWeakMediaValue()Lcom/monetization/ads/network/model/MediaValue;"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v5, "currentViewAdapter"

    const-string v6, "getCurrentViewAdapter()Lcom/monetization/ads/nativeads/assetadapter/viewadapter/MediaViewAdapter;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Laf5;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    return-void
.end method

.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/cw1;Lcom/yandex/mobile/ads/impl/hx0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/fz1;)V
    .locals 1

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewRenderController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackSize"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/yandex/mobile/ads/impl/hx0;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ox0;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dw1;->d:Lcom/yandex/mobile/ads/impl/hx0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dw1;->e:Lcom/yandex/mobile/ads/impl/hx0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dw1;->f:Lcom/yandex/mobile/ads/impl/fz1;

    const/4 p3, 0x0

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p4

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dw1;->g:Lcom/yandex/mobile/ads/impl/go1;

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dw1;->h:Lcom/yandex/mobile/ads/impl/go1;

    sget-object p3, Ll72;->a:Ll72;

    new-instance p3, Lcom/yandex/mobile/ads/impl/fw1;

    invoke-direct {p3, p2, p0}, Lcom/yandex/mobile/ads/impl/fw1;-><init>(Lcom/yandex/mobile/ads/impl/cw1;Lcom/yandex/mobile/ads/impl/dw1;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/dw1$a;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3}, Lcom/yandex/mobile/ads/impl/dw1$a;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, p2}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->setOnSizeChangedListener$mobileads_externalRelease(Lcom/monetization/ads/nativeads/CustomizableMediaView$a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/hx0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1;->e:Lcom/yandex/mobile/ads/impl/hx0;

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/dw1;Lcom/yandex/mobile/ads/impl/hx0;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lfd7;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/fz1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1;->f:Lcom/yandex/mobile/ads/impl/fz1;

    return-object p0
.end method

.method public static final c(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/yandex/mobile/ads/impl/ex0;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->h:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ex0;

    return-object p0
.end method

.method public static final d(Lcom/yandex/mobile/ads/impl/dw1;)Lcom/monetization/ads/nativeads/CustomizableMediaView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->g:Lcom/yandex/mobile/ads/impl/go1;

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hx0;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->a()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 4
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    .line 5
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->d:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1;->e:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 1

    .line 14
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->d:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1;->e:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 3

    .line 21
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2, p1}, Lcom/yandex/mobile/ads/impl/go1;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->h:Lcom/yandex/mobile/ads/impl/go1;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2, p2}, Lcom/yandex/mobile/ads/impl/go1;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hx0;

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 3

    .line 26
    const-string v0, "mediaValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hx0;

    .line 28
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V
    .locals 1

    .line 8
    check-cast p3, Lcom/yandex/mobile/ads/impl/ex0;

    .line 9
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->d:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dw1;->e:Lcom/yandex/mobile/ads/impl/hx0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/vg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .line 17
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    .line 18
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hx0;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/dw1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/hx0$a;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dw1;->i:Lcom/yandex/mobile/ads/impl/fw1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/dw1;->j:[Laf5;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hx0;

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hx0;->d()Lcom/yandex/mobile/ads/impl/hx0$a;

    move-result-object p0

    return-object p0
.end method
