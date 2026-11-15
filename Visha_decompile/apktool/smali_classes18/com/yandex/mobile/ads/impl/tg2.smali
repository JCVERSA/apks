.class public final Lcom/yandex/mobile/ads/impl/tg2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sg2;)V
    .locals 1

    const-string v0, "videoViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tg2;->a:Lcom/yandex/mobile/ads/impl/sg2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tg2;->a:Lcom/yandex/mobile/ads/impl/sg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sg2;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
