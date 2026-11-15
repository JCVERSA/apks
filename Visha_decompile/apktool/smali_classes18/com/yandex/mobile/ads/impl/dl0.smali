.class public final Lcom/yandex/mobile/ads/impl/dl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ei2;

.field private final b:Lcom/yandex/mobile/ads/impl/am;

.field private final c:Lcom/yandex/mobile/ads/impl/o10;

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/FrameLayout;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/zl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/FrameLayout;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/fl0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ei2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ei2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/am;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/am;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/dl0;-><init>(Lcom/yandex/mobile/ads/impl/ei2;Lcom/yandex/mobile/ads/impl/am;Lcom/yandex/mobile/ads/impl/o10;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ei2;Lcom/yandex/mobile/ads/impl/am;Lcom/yandex/mobile/ads/impl/o10;)V
    .locals 1

    .line 5
    const-string v0, "descriptionCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "borderViewManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionConverter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dl0;->a:Lcom/yandex/mobile/ads/impl/ei2;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dl0;->b:Lcom/yandex/mobile/ads/impl/am;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dl0;->c:Lcom/yandex/mobile/ads/impl/o10;

    .line 10
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dl0;->d:Ljava/util/WeakHashMap;

    .line 11
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dl0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dl0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/fl0;

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Lcom/yandex/mobile/ads/impl/n92;Z)V
    .locals 6

    .line 10
    const-string v0, "validationResult"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dl0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zl;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "getContext(...)"

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lcom/yandex/mobile/ads/impl/zl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/dl0;->c:Lcom/yandex/mobile/ads/impl/o10;

    .line 14
    new-instance v5, Lcom/yandex/mobile/ads/impl/e50;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/e50;-><init>()V

    .line 15
    invoke-direct {v0, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/zl;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/su0;)V

    .line 16
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/dl0;->d:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/dl0;->b:Lcom/yandex/mobile/ads/impl/am;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v3, "borderView"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/high16 v3, -0x10000

    goto :goto_1

    :cond_2
    const v3, -0xff0100

    .line 20
    :goto_1
    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/zl;->setColor(I)V

    if-eqz p3, :cond_5

    .line 21
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/yandex/mobile/ads/impl/fl0;

    :cond_3
    if-nez v1, :cond_4

    .line 23
    new-instance v1, Lcom/yandex/mobile/ads/impl/fl0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    .line 25
    invoke-direct {v1, p3, v0}, Lcom/yandex/mobile/ads/impl/fl0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o10;)V

    .line 26
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dl0;->a:Lcom/yandex/mobile/ads/impl/ei2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ei2;->a(Lcom/yandex/mobile/ads/impl/n92;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/fl0;->setDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_6

    .line 31
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/yandex/mobile/ads/impl/fl0;

    :cond_6
    if-eqz v1, :cond_7

    .line 32
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dl0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_2
    return-void
.end method
