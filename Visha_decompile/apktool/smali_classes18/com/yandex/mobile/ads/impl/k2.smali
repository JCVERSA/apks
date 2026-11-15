.class public final Lcom/yandex/mobile/ads/impl/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/m2;->d:I

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/m2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m2;->c()Lcom/yandex/mobile/ads/impl/l2;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/k2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l2;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerStateStorage"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k2;->a:Lcom/yandex/mobile/ads/impl/l2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/i2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k2;->a:Lcom/yandex/mobile/ads/impl/l2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l2;->b()Lcom/yandex/mobile/ads/impl/i2;

    move-result-object p0

    return-object p0
.end method
