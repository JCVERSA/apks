.class public final Lcom/yandex/mobile/ads/impl/mo2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/mo2;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/mo2;->a:Z

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/cp2;->a()Lcom/yandex/mobile/ads/impl/cp2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/cp2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/go2;->a()Lcom/yandex/mobile/ads/impl/go2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/go2;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/io2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ro2;->a()Lcom/yandex/mobile/ads/impl/ro2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ro2;->a(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Application Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/mo2;->a:Z

    return p0
.end method
