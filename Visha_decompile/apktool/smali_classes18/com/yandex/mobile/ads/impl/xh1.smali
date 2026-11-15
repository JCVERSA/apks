.class public final Lcom/yandex/mobile/ads/impl/xh1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xh1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rg2;

.field private final b:Lcom/yandex/mobile/ads/impl/nc2;

.field private final c:Lcom/yandex/mobile/ads/impl/ac1;

.field private final d:Lcom/yandex/mobile/ads/impl/of2;

.field private final e:Lcom/yandex/mobile/ads/impl/xh1$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/nc2;Lcom/yandex/mobile/ads/impl/ac1;Lcom/yandex/mobile/ads/impl/nl1;)V
    .locals 1

    const-string v0, "videoViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBarConfigurator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xh1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xh1;->b:Lcom/yandex/mobile/ads/impl/nc2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xh1;->c:Lcom/yandex/mobile/ads/impl/ac1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/of2;

    invoke-direct {p1, p3, p4}, Lcom/yandex/mobile/ads/impl/of2;-><init>(Lcom/yandex/mobile/ads/impl/ac1;Lcom/yandex/mobile/ads/impl/nl1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xh1;->d:Lcom/yandex/mobile/ads/impl/of2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/xh1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/xh1$a;-><init>(Lcom/yandex/mobile/ads/impl/xh1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xh1;->e:Lcom/yandex/mobile/ads/impl/xh1$a;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/xh1;)Lcom/yandex/mobile/ads/impl/ac1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->c:Lcom/yandex/mobile/ads/impl/ac1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/xh1;)Lcom/yandex/mobile/ads/impl/of2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->d:Lcom/yandex/mobile/ads/impl/of2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/xh1;)Lcom/yandex/mobile/ads/impl/rg2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xh1;->b:Lcom/yandex/mobile/ads/impl/nc2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xh1;->e:Lcom/yandex/mobile/ads/impl/xh1$a;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/nc2;->a(Lcom/yandex/mobile/ads/impl/tc2;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->b:Lcom/yandex/mobile/ads/impl/nc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nc2;->play()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/tc2;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->e:Lcom/yandex/mobile/ads/impl/xh1$a;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xh1$a;->a(Lcom/yandex/mobile/ads/impl/tc2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 2

    .line 5
    const-string v0, "videoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xh1;->b:Lcom/yandex/mobile/ads/impl/nc2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nc2;->stop()V

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xh1;->c:Lcom/yandex/mobile/ads/impl/ac1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qa1;->a()Lcom/yandex/mobile/ads/impl/aw0;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/aw0;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object p0

    const/16 v0, 0x8

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/aw0;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_1
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/aw0;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 16
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
