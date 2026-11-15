.class final Lcom/yandex/mobile/ads/impl/i40$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/i40;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 0

    .line 2
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->p:Lcom/yandex/mobile/ads/impl/f40;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/mi1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/g40;
    .locals 1
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p2, Lcom/yandex/mobile/ads/impl/jc0;->p:Lcom/yandex/mobile/ads/impl/f40;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/u50;

    new-instance p1, Lcom/yandex/mobile/ads/impl/g40$a;

    new-instance p2, Lcom/yandex/mobile/ads/impl/l82;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/l82;-><init>()V

    const/16 v0, 0x1771

    invoke-direct {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/g40$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/u50;-><init>(Lcom/yandex/mobile/ads/impl/g40$a;)V

    return-object p0
.end method
