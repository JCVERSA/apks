.class public final Lcom/yandex/mobile/ads/impl/ue0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qc;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xe0;

.field private final b:Lcom/yandex/mobile/ads/impl/ze0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/xe0;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/xe0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ze0;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/ze0;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ue0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe0;Lcom/yandex/mobile/ads/impl/ze0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe0;Lcom/yandex/mobile/ads/impl/ze0;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gmsClientAdvertisingInfoProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gmsServiceAdvertisingInfoProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ue0;->a:Lcom/yandex/mobile/ads/impl/xe0;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ue0;->b:Lcom/yandex/mobile/ads/impl/ze0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/lc;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ue0;->a:Lcom/yandex/mobile/ads/impl/xe0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xe0;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ue0;->b:Lcom/yandex/mobile/ads/impl/ze0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ze0;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v0

    :cond_0
    return-object v0
.end method
