.class public final Lcom/yandex/mobile/ads/impl/io1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l10;

.field private final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/l10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/l10;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/io1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l10;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l10;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTypeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/io1;->a:Lcom/yandex/mobile/ads/impl/l10;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/io1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/fw0;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/io1;->a:Lcom/yandex/mobile/ads/impl/l10;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/io1;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/l10;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/k10;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/k10;->d:Lcom/yandex/mobile/ads/impl/k10;

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/fw0;

    const/16 v0, 0x438

    const/16 v1, 0x1a90

    const/16 v2, 0x780

    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/fw0;-><init>(III)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/fw0;

    const/16 v0, 0x1e0

    const/16 v1, 0x3e8

    const/16 v2, 0x356

    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/fw0;-><init>(III)V

    :goto_0
    return-object p0
.end method
