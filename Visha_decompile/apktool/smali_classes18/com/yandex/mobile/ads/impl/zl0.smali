.class public final Lcom/yandex/mobile/ads/impl/zl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;)V
    .locals 1

    const-string v0, "instreamVastAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zl0;->a:Lcom/yandex/mobile/ads/impl/co0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)Lcom/yandex/mobile/ads/impl/ln0;
    .locals 3

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialControlsState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zl0;->a:Lcom/yandex/mobile/ads/impl/co0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/co0;->getVolume()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->n()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->j()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    if-eqz p1, :cond_2

    int-to-float v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/ln0$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ln0$a;-><init>()V

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ln0$a;->b(Z)Lcom/yandex/mobile/ads/impl/ln0$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ln0$a;->a(Z)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ln0$a;->b(F)V

    :cond_4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->a()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ln0$a;->a(F)Lcom/yandex/mobile/ads/impl/ln0$a;

    new-instance p0, Lcom/yandex/mobile/ads/impl/ln0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ln0;-><init>(Lcom/yandex/mobile/ads/impl/ln0$a;)V

    return-object p0
.end method
