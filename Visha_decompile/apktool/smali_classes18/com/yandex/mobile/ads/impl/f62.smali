.class public abstract Lcom/yandex/mobile/ads/impl/f62;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/f62$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/f62$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/yandex/mobile/ads/impl/wi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/yandex/mobile/ads/impl/zo1;Lcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)Lcom/yandex/mobile/ads/impl/g62;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/wi;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f62;->b:Lcom/yandex/mobile/ads/impl/wi;

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/f62$a;Lcom/yandex/mobile/ads/impl/wi;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f62;->a:Lcom/yandex/mobile/ads/impl/f62$a;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f62;->b:Lcom/yandex/mobile/ads/impl/wi;

    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/impl/ph;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f62;->a:Lcom/yandex/mobile/ads/impl/f62$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/f62$a;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    instance-of p0, p0, Lcom/yandex/mobile/ads/impl/s00;

    return p0
.end method

.method public d()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/f62;->a:Lcom/yandex/mobile/ads/impl/f62$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/f62;->b:Lcom/yandex/mobile/ads/impl/wi;

    return-void
.end method
