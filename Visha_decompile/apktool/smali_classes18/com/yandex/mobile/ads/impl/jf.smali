.class public final Lcom/yandex/mobile/ads/impl/jf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kx1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jf;-><init>(Lcom/yandex/mobile/ads/impl/kx1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kx1;)V
    .locals 1

    .line 3
    const-string v0, "sensitiveModeChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jf;->a:Lcom/yandex/mobile/ads/impl/kx1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kd;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf;->a:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    new-instance p1, Lcom/yandex/mobile/ads/impl/kd;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/kd;-><init>(Z)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jf;->a:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
