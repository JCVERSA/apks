.class final Lcom/yandex/mobile/ads/impl/sz$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/sz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sz;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz$c;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz$c;->a:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sz;->c(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/rz;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/rz;->a([B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/rz;->a(I)V

    :cond_2
    return-void
.end method
