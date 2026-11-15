.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "vd_cp_gesture_doubletap_pause"

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "vd_cp_gesture_doubletap_play"

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->X2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    return-void
.end method

.method public c(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->l1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->b2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    const-string v0, "vd_cp_lp"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    const-string v0, "vd_cp_lp_disc_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)I

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->l2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v2

    invoke-virtual {v0, v2, p2}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->setSpeedLayout(ZZ)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    :cond_3
    invoke-static {}, Lmb8;->c()Lmb8;

    move-result-object p2

    invoke-virtual {p2}, Lmb8;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d2(F)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setSpeed(F)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    invoke-static {p1}, Lp06;->t(F)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->hideScaleStateView()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->m1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->u1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lp06;->s(II)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->i(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d2(F)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setSpeed(F)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->l1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lmb8;->c()Lmb8;

    move-result-object v0

    invoke-virtual {v0}, Lmb8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->b2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    const-string v0, "vd_cp_lp"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d2(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setSpeed(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->setSpeedState(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->hideScaleStateView()V

    return-void
.end method

.method public f(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$a0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->X2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    return-void
.end method
