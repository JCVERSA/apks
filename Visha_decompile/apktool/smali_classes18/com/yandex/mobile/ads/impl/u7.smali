.class public final Lcom/yandex/mobile/ads/impl/u7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/va;

.field private final b:Lcom/yandex/mobile/ads/impl/sa;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/va;Lcom/yandex/mobile/ads/impl/sa;)V
    .locals 1

    const-string v0, "adVisibilityValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adViewRenderingValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u7;->a:Lcom/yandex/mobile/ads/impl/va;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u7;->b:Lcom/yandex/mobile/ads/impl/sa;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u7;->a:Lcom/yandex/mobile/ads/impl/va;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/va;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u7;->b:Lcom/yandex/mobile/ads/impl/sa;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sa;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
