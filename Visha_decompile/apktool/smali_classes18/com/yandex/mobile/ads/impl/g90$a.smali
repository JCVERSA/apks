.class final Lcom/yandex/mobile/ads/impl/g90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/g90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/g90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g90;->access$getBoundViewHolders$p(Lcom/yandex/mobile/ads/impl/g90;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/g90;->access$bindHolder(Lcom/yandex/mobile/ads/impl/g90;Lcom/yandex/mobile/ads/impl/ma0;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g90;->access$registerTrackers(Lcom/yandex/mobile/ads/impl/g90;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g90;->access$unregisterTrackers(Lcom/yandex/mobile/ads/impl/g90;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g90;->access$getBoundViewHolders$p(Lcom/yandex/mobile/ads/impl/g90;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/g90;->access$unbindHolder(Lcom/yandex/mobile/ads/impl/g90;Lcom/yandex/mobile/ads/impl/ma0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
