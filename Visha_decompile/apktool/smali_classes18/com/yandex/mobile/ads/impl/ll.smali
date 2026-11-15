.class public final Lcom/yandex/mobile/ads/impl/ll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ft;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/tl0;

.field private e:Lcom/yandex/mobile/ads/impl/t70;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ft;Ljava/lang/ref/WeakReference;Lcom/yandex/mobile/ads/impl/tl0;Lcom/yandex/mobile/ads/impl/t70;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ft;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/tl0;",
            "Lcom/yandex/mobile/ads/impl/t70;",
            ")V"
        }
    .end annotation

    const-string v0, "adViewGroup"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "friendlyOverlays"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adViewGroupReference"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binderPrivate"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ll;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ll;->b:Lcom/yandex/mobile/ads/impl/ft;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ll;->c:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ll;->d:Lcom/yandex/mobile/ads/impl/tl0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ll;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/t70;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/t70;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    .line 4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 5
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ll;->d:Lcom/yandex/mobile/ads/impl/tl0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ll;->a:Ljava/util/List;

    invoke-virtual {v1, v0, p0}, Lcom/yandex/mobile/ads/impl/tl0;->a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/nb2;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ll;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ll;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ll;->e:Lcom/yandex/mobile/ads/impl/t70;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ll;->b:Lcom/yandex/mobile/ads/impl/ft;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ft;->a(Lcom/yandex/mobile/ads/impl/fm2;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->e()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->invalidateAdPlayer()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ll;->d:Lcom/yandex/mobile/ads/impl/tl0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tl0;->a()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ll;->d:Lcom/yandex/mobile/ads/impl/tl0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tl0;->b()V

    return-void
.end method
