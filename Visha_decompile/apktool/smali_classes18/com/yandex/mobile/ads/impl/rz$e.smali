.class final Lcom/yandex/mobile/ads/impl/rz$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/rz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rz;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz$e;->a:Lcom/yandex/mobile/ads/impl/rz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz$e;->a:Lcom/yandex/mobile/ads/impl/rz;

    invoke-static {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/rz;->j(Lcom/yandex/mobile/ads/impl/rz;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz$e;->a:Lcom/yandex/mobile/ads/impl/rz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->h(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/l60$d;

    move-result-object p1

    if-ne v1, p1, :cond_4

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->g(Lcom/yandex/mobile/ads/impl/rz;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->k(Lcom/yandex/mobile/ads/impl/rz;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->i(Lcom/yandex/mobile/ads/impl/rz;Lcom/yandex/mobile/ads/impl/l60$d;)V

    instance-of p1, v0, Ljava/lang/Exception;

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->e(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/rz$a;

    move-result-object p0

    check-cast v0, Ljava/lang/Exception;

    check-cast p0, Lcom/yandex/mobile/ads/impl/sz$f;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Ljava/lang/Exception;Z)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->d(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/l60;

    move-result-object p1

    check-cast v0, [B

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/l60;->c([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->e(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/rz$a;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sz$f;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rz;->e(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/rz$a;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {p0, p1, v2}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Ljava/lang/Exception;Z)V

    :cond_4
    :goto_0
    return-void
.end method
