.class public final Lcom/yandex/mobile/ads/impl/gf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ps0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/gf1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ps0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "localStorage"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gf1;->a:Lcom/yandex/mobile/ads/impl/ps0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf1;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v0, "OPT_OUT_ENABLED"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gf1;->a:Lcom/yandex/mobile/ads/impl/ps0;

    const-string v0, "OPT_OUT_ENABLED"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/ps0;->b(Ljava/lang/String;Z)V

    return-void
.end method
