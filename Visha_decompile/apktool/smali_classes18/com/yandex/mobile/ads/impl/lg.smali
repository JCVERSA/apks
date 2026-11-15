.class public final Lcom/yandex/mobile/ads/impl/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q71;

.field private final b:Lcom/yandex/mobile/ads/impl/kg;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/kg;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/q71;",
            "Lcom/yandex/mobile/ads/impl/kg;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "nativeAdWeakViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetAdapterCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lg;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ix0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/q71;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/ix0;",
            "Lcom/yandex/mobile/ads/impl/n91;",
            "Lcom/yandex/mobile/ads/impl/t81;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/fc1;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    .line 6
    const-string v1, "nativeAdWeakViewProvider"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object v4, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaViewAdapterCreator"

    move-object v5, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeMediaContent"

    move-object v6, p4

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeForcePauseObserver"

    move-object v7, p5

    invoke-static {p5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    move-object/from16 v3, p6

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeVisualBlock"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reporter"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/yandex/mobile/ads/impl/kg;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/kg;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ix0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 8
    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/fc1;->b()Ljava/util/List;

    move-result-object v2

    move-object v3, p0

    .line 9
    invoke-direct {p0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/lg;-><init>(Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/kg;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    const-string v3, "close_button"

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/yandex/mobile/ads/impl/vp;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/vp;-><init>(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_2

    new-instance v2, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    goto :goto_2

    :cond_2
    move-object v2, v5

    :goto_2
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    const-string v3, "feedback"

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    check-cast v2, Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    move-object v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/kg;->a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/ej0;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q71;->b()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    const-string v4, "media"

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    instance-of v6, v3, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v6, :cond_4

    check-cast v3, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    goto :goto_4

    :cond_4
    move-object v3, v5

    :goto_4
    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/kg;->a(Landroid/widget/ImageView;Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/zu0;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    const-string v3, "rating"

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/kg;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/fz;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q71;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_5

    new-instance v1, Lcom/yandex/mobile/ads/impl/ts1;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/ts1;-><init>(Landroid/view/View;)V

    goto :goto_5

    :cond_5
    move-object v1, v5

    :goto_5
    if-eqz v1, :cond_6

    new-instance v5, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v5, v1}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    :cond_6
    const-string v1, "root_container"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "view"

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/yandex/mobile/ads/impl/kg;->a(Landroid/view/View;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/w00;

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/w00;-><init>(Landroid/view/View;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v5, v3}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    :cond_8
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg;->a:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/q71;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg;->b:Lcom/yandex/mobile/ads/impl/kg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/w00;

    invoke-direct {v5, v2}, Lcom/yandex/mobile/ads/impl/w00;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/fz;

    invoke-direct {v2, v5}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    return-object v0
.end method
