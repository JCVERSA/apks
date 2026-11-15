.class final Lcom/yandex/mobile/ads/impl/mj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xq1$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/oj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oj0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mj0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mj0;->b:Lcom/yandex/mobile/ads/impl/oj0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mj0;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->b(Lcom/yandex/mobile/ads/impl/oj0;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/oj0$a;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lcom/yandex/mobile/ads/impl/oj0$a;->f(Lcom/yandex/mobile/ads/impl/oj0$a;Lcom/yandex/mobile/ads/impl/si2;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->c(Lcom/yandex/mobile/ads/impl/oj0;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->e(Lcom/yandex/mobile/ads/impl/oj0;)Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/nj0;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/nj0;-><init>(Lcom/yandex/mobile/ads/impl/oj0;)V

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/oj0;->f(Lcom/yandex/mobile/ads/impl/oj0;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/oj0;->d(Lcom/yandex/mobile/ads/impl/oj0;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
