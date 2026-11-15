.class public final Lcom/yandex/mobile/ads/impl/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jp1;

.field private final b:Lcom/yandex/mobile/ads/impl/zv0;

.field private final c:Lcom/yandex/mobile/ads/impl/d0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/jp1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jp1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/zv0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/zv0;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/d0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/d0;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/e0;-><init>(Lcom/yandex/mobile/ads/impl/jp1;Lcom/yandex/mobile/ads/impl/zv0;Lcom/yandex/mobile/ads/impl/d0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jp1;Lcom/yandex/mobile/ads/impl/zv0;Lcom/yandex/mobile/ads/impl/d0;)V
    .locals 1

    .line 5
    const-string v0, "replayActionViewCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsContainerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaControlsContainerConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e0;->a:Lcom/yandex/mobile/ads/impl/jp1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e0;->b:Lcom/yandex/mobile/ads/impl/zv0;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e0;->c:Lcom/yandex/mobile/ads/impl/d0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/aw0;I)Lcom/yandex/mobile/ads/impl/qa1;
    .locals 2
    .param p4    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoOptions"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customControls"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e0;->b:Lcom/yandex/mobile/ads/impl/zv0;

    invoke-virtual {v1, p1, p4, p3}, Lcom/yandex/mobile/ads/impl/zv0;->a(Landroid/content/Context;ILcom/yandex/mobile/ads/impl/aw0;)Lcom/yandex/mobile/ads/impl/aw0;

    move-result-object p3

    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/e0;->a:Lcom/yandex/mobile/ads/impl/jp1;

    invoke-virtual {p4, p1}, Lcom/yandex/mobile/ads/impl/jp1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/hp1;

    move-result-object p4

    new-instance v1, Lcom/yandex/mobile/ads/impl/qa1;

    invoke-direct {v1, p1, p4, p3}, Lcom/yandex/mobile/ads/impl/qa1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hp1;Lcom/yandex/mobile/ads/impl/aw0;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e0;->c:Lcom/yandex/mobile/ads/impl/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "actionViewsContainer"

    invoke-static {v1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qa1;->a()Lcom/yandex/mobile/ads/impl/aw0;

    move-result-object p0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qa1;->b()Lcom/yandex/mobile/ads/impl/hp1;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/aw0;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p1

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/aw0;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object p4

    goto :goto_2

    :cond_2
    move-object p4, p1

    :goto_2
    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/aw0;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object p4

    goto :goto_4

    :cond_4
    move-object p4, p1

    :goto_4
    if-nez p4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/aw0;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object p1

    :cond_6
    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xe2;->e()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_6
    return-object v1
.end method
