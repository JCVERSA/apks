.class final Lcom/yandex/mobile/ads/impl/hz$l$a;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/hz$l;-><init>(Lcom/yandex/mobile/ads/impl/hz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/hz$l;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hz$l;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$l$a;->a:Lcom/yandex/mobile/ads/impl/hz$l;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l$a;->a:Lcom/yandex/mobile/ads/impl/hz$l;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->c:Lcom/yandex/mobile/ads/impl/hz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->h(Lcom/yandex/mobile/ads/impl/hz;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->f(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/wh$c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->c(Lcom/yandex/mobile/ads/impl/hz;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/hv0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hv0$a;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l$a;->a:Lcom/yandex/mobile/ads/impl/hz$l;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->c:Lcom/yandex/mobile/ads/impl/hz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->h(Lcom/yandex/mobile/ads/impl/hz;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->f(Lcom/yandex/mobile/ads/impl/hz;)Lcom/yandex/mobile/ads/impl/wh$c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hz;->c(Lcom/yandex/mobile/ads/impl/hz;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/hv0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hv0$a;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
