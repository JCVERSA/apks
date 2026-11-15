.class public final Lcom/yandex/mobile/ads/impl/ul1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cn0;

.field private final b:Lcom/yandex/mobile/ads/impl/an0;

.field private final c:Lcom/yandex/mobile/ads/impl/ol1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/cn0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/an0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/an0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ol1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ol1;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ul1;-><init>(Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/ol1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/ol1;)V
    .locals 1

    .line 4
    const-string v0, "instreamAdViewsHolderManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdViewUiElementsManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBarConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ul1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ul1;->b:Lcom/yandex/mobile/ads/impl/an0;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ul1;->c:Lcom/yandex/mobile/ads/impl/ol1;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ul1;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ul1;->b:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "instreamAdView"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ob2;->j()Landroid/widget/ProgressBar;

    move-result-object v1

    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ul1;->c:Lcom/yandex/mobile/ads/impl/ol1;

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/ol1;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_2
    return-void
.end method
