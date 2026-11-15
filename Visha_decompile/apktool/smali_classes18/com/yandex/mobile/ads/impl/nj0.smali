.class final Lcom/yandex/mobile/ads/impl/nj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/oj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oj0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->c(Lcom/yandex/mobile/ads/impl/oj0;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/oj0$a;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/oj0$a;->d(Lcom/yandex/mobile/ads/impl/oj0$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/oj0$c;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/oj0$c;->a(Lcom/yandex/mobile/ads/impl/oj0$c;)Lcom/yandex/mobile/ads/impl/oj0$d;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/oj0$a;->c(Lcom/yandex/mobile/ads/impl/oj0$a;)Lcom/yandex/mobile/ads/impl/si2;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/oj0$a;->b(Lcom/yandex/mobile/ads/impl/oj0$a;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/yandex/mobile/ads/impl/oj0$c;->b(Lcom/yandex/mobile/ads/impl/oj0$c;Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/yandex/mobile/ads/impl/oj0$d;->a(Lcom/yandex/mobile/ads/impl/oj0$c;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v4, v5}, Lcom/yandex/mobile/ads/impl/xq1$a;->a(Lcom/yandex/mobile/ads/impl/si2;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->c(Lcom/yandex/mobile/ads/impl/oj0;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/oj0;->f(Lcom/yandex/mobile/ads/impl/oj0;Ljava/lang/Runnable;)V

    return-void
.end method
