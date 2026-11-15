.class public final Lcom/yandex/mobile/ads/impl/pz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cn0;

.field private final b:Lcom/yandex/mobile/ads/impl/an0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cn0;)V
    .locals 1

    const-string v0, "viewHolderManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pz1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/an0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/an0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pz1;->b:Lcom/yandex/mobile/ads/impl/an0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pz1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object v0

    const-string v1, "instreamAdView"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/pz1;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ob2;->m()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const/16 v3, 0x8

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pz1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pz1;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ob2;->n()Landroid/view/View;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    const/4 p0, 0x0

    .line 12
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    .line 13
    invoke-virtual {v2, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pz1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pz1;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string p0, "instreamAdView"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ob2;->m()Landroid/widget/TextView;

    move-result-object v1

    :cond_1
    sub-long/2addr p1, p3

    const/16 p0, 0x3e8

    int-to-long p3, p0

    .line 19
    div-long/2addr p1, p3

    long-to-int p0, p1

    add-int/lit8 p0, p0, 0x1

    if-eqz v1, :cond_2

    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 21
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
