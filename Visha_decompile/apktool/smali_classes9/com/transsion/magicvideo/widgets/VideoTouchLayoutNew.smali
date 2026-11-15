.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;
.super Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;
    }
.end annotation


# instance fields
.field public final D6:Landroidx/lifecycle/Observer;

.field public final E6:I

.field public final F6:Ljava/lang/Runnable;

.field public G1:Landroid/widget/TextView;

.field public G2:Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

.field public G3:Ljava/lang/Long;

.field public G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

.field public H6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

.field public I6:Z

.field public J6:Ljava/lang/String;

.field public K6:Z

.field public L6:Landroid/view/View$OnClickListener;

.field public M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

.field public N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public O0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public S0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public T0:Landroid/widget/ImageView;

.field public U0:Landroid/widget/ImageView;

.field public V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public V1:Landroid/widget/ImageView;

.field public V2:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

.field public W0:Lcom/transsion/widgets/MarqueTextView;

.field public X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

.field public Y0:Landroid/widget/TextView;

.field public Z0:J

.field public a1:J

.field public b1:Z

.field public c1:J

.field public d1:F

.field public e1:Landroid/content/Context;

.field public f1:I

.field public f2:Z

.field public f3:Landroid/view/animation/Animation;

.field public f4:I

.field public g1:I

.field public h1:Landroid/widget/ImageView;

.field public i1:Landroid/widget/ImageView;

.field public j1:Landroid/view/View;

.field public k1:Landroid/view/View;

.field public k2:Lwoc;

.field public k3:Landroid/view/animation/Animation;

.field public k4:Ljava/lang/Boolean;

.field public k5:Landroid/widget/ImageView;

.field public k6:Ljava/lang/String;

.field public l1:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public m1:Lcom/transsion/utils/CustomLinearLayoutManager;

.field public n1:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

.field public o1:Landroid/view/View;

.field public p1:Lcom/transsion/widgets/BubbleTextView;

.field public p2:Landroid/widget/ImageView;

.field public p3:Landroid/view/animation/Animation;

.field public p4:I

.field public p5:Landroid/widget/PopupMenu;

.field public p6:Ljava/lang/Boolean;

.field public playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

.field public q1:I

.field public q2:Landroid/widget/TextView;

.field public q3:Landroid/view/animation/Animation;

.field public q4:I

.field public q5:Z

.field public q6:Landroid/view/View;

.field public r1:Lcom/transsion/widgets/battery/BatteryMeterView;

.field public s1:Lcom/transsion/widgets/ClockView;

.field public t1:Landroid/widget/ImageView;

.field public x1:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public x2:Landroid/widget/ImageView;

.field public y1:Landroid/widget/TextView;

.field public y2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f2:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G3:Ljava/lang/Long;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    .line 5
    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k4:Ljava/lang/Boolean;

    .line 6
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    .line 7
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->D6:Landroidx/lifecycle/Observer;

    const/16 p1, 0x2710

    .line 8
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->E6:I

    .line 9
    new-instance p1, Lj8c;

    invoke-direct {p1, p0}, Lj8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F6:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f2:Z

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G3:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    .line 14
    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k4:Ljava/lang/Boolean;

    .line 15
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    .line 16
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->D6:Landroidx/lifecycle/Observer;

    const/16 p1, 0x2710

    .line 17
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->E6:I

    .line 18
    new-instance p1, Lj8c;

    invoke-direct {p1, p0}, Lj8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F6:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f2:Z

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G3:Ljava/lang/Long;

    const/4 p3, 0x1

    .line 22
    iput p3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    .line 23
    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k4:Ljava/lang/Boolean;

    .line 24
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    .line 25
    new-instance p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->D6:Landroidx/lifecycle/Observer;

    const/16 p1, 0x2710

    .line 26
    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->E6:I

    .line 27
    new-instance p1, Lj8c;

    invoke-direct {p1, p0}, Lj8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F6:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1:I

    return p0
.end method

.method public static bridge synthetic B0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->c1:J

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->o1:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n1:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/widgets/BubbleTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p1:Lcom/transsion/widgets/BubbleTextView;

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1:I

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->g1(I)V

    return-void
.end method

.method public static bridge synthetic I0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1()V

    return-void
.end method

.method private K0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Z0:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VideoTouchLayoutNew"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic V0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lw6c;->D(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic Z0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveFileToMyCloudDrive error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0()V

    return-void
.end method

.method public static synthetic f0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Z0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->c1(IZ)V

    return-void
.end method

.method private g1(I)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar onStopTrackingTouch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lwna;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VideoTouchLayoutNew"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->M()Z

    move-result p1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Q1(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->isVideoProgressEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->onPlayStatusEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->W(Z)V

    return-void
.end method

.method private getNavigationBarPx()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/a;->f(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private getVideoButtonOverWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q4:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->O0()V

    :cond_0
    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q4:I

    return p0
.end method

.method public static synthetic h0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1()V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0(I)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->W0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->a1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->b1(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1(IZ)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private o1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->L6:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v2, Lcom/transsion/magicvideo/R$drawable;->ic_farvorited_on:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$drawable;->ic_farvorite_w:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Llz5;->h(I)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    invoke-static {p0}, Lcd;->i(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f1(Z)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->c1:J

    return-wide v0
.end method

.method private setFastIconVisible(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->o1:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n1:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgets/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p1:Lcom/transsion/widgets/BubbleTextView;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F6:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->A(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1()V

    return-void
.end method

.method public J0()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/activities/BaseFoldActivity;

    invoke-virtual {v2, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isSmallSplitScreen(Z)Z

    move-result v2

    iget-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideView isErrorOrMusic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isSmallSplit:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",mSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoTouchLayoutNew"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v6, 0x8

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v7, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->O0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v7, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v6

    :goto_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v2, :cond_7

    invoke-static {}, Lpp3;->s()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    iget-object v7, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v7}, Lcom/transsion/utils/a;->u(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v7, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v7, v6

    :goto_7
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x4

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    iget v9, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_8

    goto :goto_8

    :cond_8
    move v9, v1

    goto :goto_9

    :cond_9
    :goto_8
    move v9, v8

    :goto_9
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v2, :cond_b

    if-nez v3, :cond_b

    iget v9, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1:F

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_a

    goto :goto_a

    :cond_a
    move v7, v1

    goto :goto_b

    :cond_b
    :goto_a
    move v7, v8

    :goto_b
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_c

    move v0, v6

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y1:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->isValueRestored()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_d

    :cond_d
    move v5, v1

    goto :goto_e

    :cond_e
    :goto_d
    move v5, v8

    :goto_e
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    goto :goto_f

    :cond_f
    move v8, v1

    :goto_f
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v3, :cond_10

    move v5, v1

    goto :goto_10

    :cond_10
    iget v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p4:I

    :goto_10
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    if-nez v3, :cond_12

    sget-boolean v5, Lpp3;->u:Z

    if-nez v5, :cond_11

    goto :goto_11

    :cond_11
    move v5, v1

    goto :goto_12

    :cond_12
    :goto_11
    move v5, v6

    :goto_12
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v2, :cond_14

    if-eqz v3, :cond_13

    goto :goto_13

    :cond_13
    move v5, v1

    goto :goto_14

    :cond_14
    :goto_13
    move v5, v6

    :goto_14
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G2:Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

    if-nez v2, :cond_16

    if-eqz v3, :cond_15

    goto :goto_15

    :cond_15
    move v6, v1

    :cond_16
    :goto_15
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x1:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_17

    iget-boolean v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v2, :cond_17

    move v2, v4

    goto :goto_16

    :cond_17
    move v2, v1

    :goto_16
    if-eqz v0, :cond_18

    iget-boolean v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v3, :cond_18

    sget-object v3, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    move v1, v4

    :cond_18
    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x1:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateCloudResourceType(ZZZ)V

    return-void
.end method

.method public L()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->L()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public final L0(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$anim;->video_forward_backward_in_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f3:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k3:Landroid/view/animation/Animation;

    sget v0, Lcom/transsion/magicvideo/R$anim;->video_forward_backward_out_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p3:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q3:Landroid/view/animation/Animation;

    new-instance p1, Le8c;

    invoke-direct {p1, p0}, Le8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final M0()V
    .locals 2

    sget-boolean v0, Lpp3;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Llc3;->c(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lpw2;->c:Z

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    sget-boolean v1, Lpw2;->c:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_open_new:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_close_new:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final N0()V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->isRtlLanguage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    new-instance v1, Lm8c;

    invoke-direct {v1, p0}, Lm8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    new-instance v1, Ln8c;

    invoke-direct {v1, p0}, Ln8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    new-instance v1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$e;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$e;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1()V

    return-void
.end method

.method public final O0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    sget v1, Lcom/transsion/magicvideo/R$style;->videoButton_over:I

    const v2, 0x10100f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q4:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final P0()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->a1:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, "VideoTouchLayoutNew"

    const-string v0, "isClick too fast AfterConfig"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final R0(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    return-void
.end method

.method public S()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->S()V

    return-void
.end method

.method public final synthetic S0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y2:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q2:Landroid/widget/TextView;

    :goto_1
    if-eqz v3, :cond_2

    const-string v5, "+"

    goto :goto_2

    :cond_2
    const-string v5, "-"

    :goto_2
    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f3:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p3:Landroid/view/animation/Animation;

    goto :goto_3

    :cond_3
    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k3:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q3:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_9

    if-eq p2, v2, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G3:Ljava/lang/Long;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long p1, v6, p1

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k4:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v3, :cond_6

    :cond_5
    iput v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f4:I

    mul-int/lit8 p2, p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n1(Z)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G3:Ljava/lang/Long;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    xor-int/lit8 p2, v3, 0x1

    invoke-interface {p1, p2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->b(Z)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k4:Ljava/lang/Boolean;

    sget-object p1, Ln16;->a:Ln16$a;

    if-eqz v3, :cond_8

    const-string p2, "video_play_forward"

    goto :goto_4

    :cond_8
    const-string p2, "video_play_retreat"

    :goto_4
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    return v2

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "imageView not math v1: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_forward_backward"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final synthetic T0(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->U()V

    return-void
.end method

.method public final synthetic U0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    instance-of v1, v0, Lcom/transsion/dbdata/beans/media/JumpMediaItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/dbdata/beans/media/JumpMediaItem;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->getJumpBean()Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V

    :cond_0
    new-instance p0, Lhb0$a;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->getJumpBean()Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getJump_app_pkg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "value"

    invoke-direct {p0, p2, p1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lhb0$a;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->getJumpBean()Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "value1"

    invoke-direct {p1, p3, p2}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p0, p1}, [Lhb0$a;

    move-result-object p0

    const-string p1, "vd_cp_playlist_jump_cl"

    invoke-static {p1, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f2:Z

    if-eqz v2, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->b(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_3
    if-eqz v0, :cond_5

    iget-boolean p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateYoutube(Z)V

    iget-boolean p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz p1, :cond_4

    sget-object p2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    iget-object p3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {p3, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateCloudResourceType(ZZZ)V

    :cond_5
    return-void
.end method

.method public W(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->W(Z)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_pause_new:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_play_new:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p6:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p6:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->l1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_pause:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_play:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-static {v1, v0}, Lcd;->d(Landroid/widget/ImageView;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p6:Ljava/lang/Boolean;

    return-void
.end method

.method public final synthetic W0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    sget-boolean p1, Lpw2;->c:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_open_new:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_close_new:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public X(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->X(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J0()V

    return-void
.end method

.method public final synthetic X0(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .locals 6

    sget-object p2, La41;->a:La41;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-virtual {p2, p0}, La41;->b(Landroid/content/Context;)Lmq3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getShareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->getFileId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    const-string v3, "root"

    invoke-interface/range {v0 .. v5}, Lmq3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic Y0(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v0, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$string;->visha_saved:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-static {p0}, Ljz5;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveFileToMyCloudDrive error: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic a1(Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/transsion/magicvideo/R$id;->menu_open_share:I

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToCloudDriveFileShareActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/transsion/magicvideo/R$id;->menu_open_save_to_cloud:I

    if-ne v2, v3, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {p1, v1, v2}, Ljz5;->c(Ljava/lang/String;J)V

    :cond_1
    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->D(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lb8c;

    invoke-direct {v1, p0, p1}, Lb8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lc8c;

    invoke-direct {v0, p0}, Lc8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    new-instance p0, Ld8c;

    invoke-direct {p0}, Ld8c;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto/16 :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v2, Lcom/transsion/magicvideo/R$id;->menu_open_download:I

    if-ne p1, v2, :cond_6

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    const-string v2, "Failed to get cloud file service"

    const-class v3, Lcom/transsion/magicvideo/services/ICloudFileService;

    const-string v4, "VideoTouchLayoutNew"

    if-eqz p1, :cond_4

    sget-object p1, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->D(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/services/ICloudFileService;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k6:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/transsion/magicvideo/services/ICloudFileService;->startDownload(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started cloud share: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k6:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_3
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error downloading share video: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    new-instance p0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>()V

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setFileId(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setFileName(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setDuration(Ljava/lang/Long;)V

    iget-wide v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setDuration(Ljava/lang/Long;)V

    iget-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setPreviewUrl(Ljava/lang/String;)V

    iget-wide v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->setSize(Ljava/lang/Long;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "menu_open_download "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/services/ICloudFileService;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/services/ICloudFileService;->startDownload(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Started cloud video download: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_5
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error downloading cloud video: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic b1(I)V
    .locals 1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->R(Z)V

    sget-boolean p1, Lpp3;->u:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llc3;->c(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_open_new:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_dolby_close_new:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwoc;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k2:Lwoc;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r1(Lwoc;Z)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k2:Lwoc;

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic c1(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    const/16 v1, 0x62

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView;IZI)V

    return-void
.end method

.method public final synthetic d1(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    const/16 v1, 0x62

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView;IZI)V

    return-void
.end method

.method public final synthetic e1()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/PlayUIDisplayView;->isPlayUIShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->showNewPlayerFeaturesBubble(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final synthetic f1(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->K6:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-static {}, Lpp3;->s()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->K6:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    invoke-static {}, Ll9;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_7

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_farvorited_on:I

    goto :goto_5

    :cond_6
    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_farvorite_w:I

    :goto_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1()V

    return-void
.end method

.method public flushVideoList()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1(ZZ)V

    :cond_0
    return-void
.end method

.method public getLandscapeByRotation()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLockLocation()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->O0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method public final h1(IZZ)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1:Lcom/transsion/utils/CustomLinearLayoutManager;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    new-instance v0, Lh8c;

    invoke-direct {v0, p0, p1, p2}, Lh8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->g1:I

    if-ne v1, v0, :cond_2

    if-nez p3, :cond_2

    const-string p0, "VideoTouchLayoutNew"

    const-string p1, "scrollListToPosition lastSelectedIndex == i"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->g1:I

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    new-instance v2, Li8c;

    invoke-direct {v2, p0, v0, p2}, Li8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;IZ)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public hideNewPlayerFeaturesBubble()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n1:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->n1:Lcom/transsion/widgets/bubblepopwindow/BubblePopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideTimer()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G1:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i1(ZZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1(IZZ)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->init(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->a0(Landroid/content/Context;)V

    sget v0, Lcom/transsion/magicvideo/R$layout;->video_play_operate_new_half:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->video_player_mediaProgressInfoLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V2:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_media_play_current_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->q0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V2:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar_media_play_bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V2:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_media_play_total_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->r0:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->t1:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q6:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_scale_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_lock_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->O0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_media_play_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/MarqueTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->W0:Lcom/transsion/widgets/MarqueTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_video_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_pip_mode_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_volume_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k5:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->top_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->j1:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_dolby:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->bm_battery:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/battery/BatteryMeterView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r1:Lcom/transsion/widgets/battery/BatteryMeterView;

    sget v1, Lcom/transsion/magicvideo/R$id;->cv_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/ClockView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s1:Lcom/transsion/widgets/ClockView;

    sget v1, Lcom/transsion/magicvideo/R$id;->btn_restore:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y1:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y1:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->O0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_settings_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->t1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->fl_video_play_speed_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_to_music_mode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->l1:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_video_play_speed_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_speed_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_player_new_feature:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_player_farvorite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tx_timer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    invoke-static {}, Ll9;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_backward:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_backward_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q2:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_forward:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_forward_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y2:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->L0(Landroid/content/Context;)V

    sget p1, Lcom/transsion/magicvideo/R$id;->tool_custom_video_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G2:Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p1}, Lvha;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->initPlaySpeed()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->d0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    sget v0, Lcom/transsion/magicvideo/R$style;->videoButton:I

    const v1, 0x10100f4

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p4:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initPlaySpeed()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateSpeed()V

    return-void
.end method

.method public isRtlLanguage(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public isVideoProgressEnd()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j1(Lwoc;ZZ)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->panel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget p1, p1, Lwoc;->a:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->getNavigationBarPx()I

    move-result p0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public final k1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->H6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->H6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->H6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lwoc;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->H6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G6:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    return-void
.end method

.method public l1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_pause_new:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/magicvideo/R$drawable;->icon_video_play_play_new:I

    :goto_0
    invoke-static {v0, p0}, Lcd;->f(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final m1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->getVideoButtonOverWidth()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public multiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->multiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    return-void
.end method

.method public final n1(Z)V
    .locals 13

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x2:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p2:Landroid/widget/ImageView;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y2:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q2:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v6, v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    int-to-float p1, v4

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v8, p1, v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v6, 0x1c2

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    sget v0, Lcom/transsion/magicvideo/R$anim;->interpolator_video_play_pause:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p1, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x226

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    sget v4, Lcom/transsion/magicvideo/R$anim;->interpolator_video_forward_retreat:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->s:Lcom/transsion/magicvideo/model/VideoControlModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    instance-of v2, v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoControlModel;->enableClickFullScreen:Landroidx/lifecycle/MutableLiveData;

    check-cast v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->D6:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v0, Lpw2;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    check-cast v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    new-instance v2, La8c;

    invoke-direct {v2, p0}, La8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->K0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Z0:J

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_back:I

    if-ne v0, v1, :cond_2

    sget-object p1, Ln16;->a:Ln16$a;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    const-string v1, "video_play_back"

    invoke-virtual {p1, v1, v0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->g(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V

    goto/16 :goto_6

    :cond_2
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_settings_new:I

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->o()V

    goto/16 :goto_6

    :cond_3
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_dolby:I

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->j()V

    goto/16 :goto_6

    :cond_4
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_lock_new:I

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->l()V

    goto/16 :goto_6

    :cond_5
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_rotate:I

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->d()V

    goto/16 :goto_6

    :cond_6
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_pause:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->shouldShowPauseButton()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "video_pause"

    goto :goto_0

    :cond_7
    const-string p1, "video_play"

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v0

    if-eqz v0, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v2}, Ljz5;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lp06;->k0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->a()V

    goto/16 :goto_6

    :cond_9
    sget v1, Lcom/transsion/magicvideo/R$id;->tv_video_play_speed_new:I

    if-eq v0, v1, :cond_1e

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_speed_new:I

    if-ne v0, v1, :cond_a

    goto/16 :goto_5

    :cond_a
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_previous:I

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->V()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->f()V

    goto/16 :goto_6

    :cond_b
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_next:I

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->T()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->n()V

    goto/16 :goto_6

    :cond_c
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_scale_new:I

    if-ne v0, v1, :cond_d

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->e()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateScaleType()V

    goto/16 :goto_6

    :cond_d
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_pip_mode_new:I

    if-ne v0, v1, :cond_e

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->k()V

    goto/16 :goto_6

    :cond_e
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_player_new_feature:I

    if-ne v0, v1, :cond_11

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->p()V

    :cond_f
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p1, v3}, Lw6c;->C(Landroid/content/Context;Z)V

    const-string p1, "vd_video_play_nfb_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p1

    if-eqz p1, :cond_10

    move v2, v3

    :cond_10
    invoke-static {v2}, Ljz5;->b(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "newfeature"

    invoke-static {v0, p1}, Lp06;->k0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    goto/16 :goto_6

    :cond_11
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_player_farvorite:I

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->o1()V

    goto/16 :goto_6

    :cond_12
    sget v1, Lcom/transsion/magicvideo/R$id;->btn_restore:I

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onRestoreClick()Z

    goto/16 :goto_6

    :cond_13
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_play_volume_new:I

    if-ne v0, v1, :cond_19

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean v0, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    const-string v1, "video_mute"

    if-nez v0, :cond_16

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t()I

    move-result v0

    if-gtz v0, :cond_14

    goto :goto_1

    :cond_14
    invoke-virtual {p1, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p0

    if-eqz p0, :cond_15

    move v2, v3

    :cond_15
    invoke-static {v2}, Ljz5;->b(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lp06;->k0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    :goto_1
    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t()I

    move-result v4

    if-gtz v4, :cond_17

    invoke-static {}, Lrtb;->g()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->G(IZ)I

    :cond_17
    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    :goto_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "btn"

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz p1, :cond_18

    const-string p1, "on"

    goto :goto_3

    :cond_18
    const-string p1, "off"

    :goto_3
    const-string v0, "mute_status"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "vd_cp_cl"

    invoke-static {p1, p0}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_19
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_to_music_mode:I

    if-ne v0, v1, :cond_1a

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->i()V

    goto :goto_6

    :cond_1a
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_video_share:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x1:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    if-eqz p1, :cond_1b

    sget p1, Lcom/transsion/magicvideo/R$menu;->menu_share:I

    goto :goto_4

    :cond_1b
    sget p1, Lcom/transsion/magicvideo/R$menu;->menu_share_no_save:I

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    new-instance v0, Lg8c;

    invoke-direct {v0, p0}, Lg8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_1c
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p5:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_6

    :cond_1d
    sget-object p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->h()V

    goto :goto_6

    :cond_1e
    :goto_5
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->m()V

    sget-object p1, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v0, "video_play_speed"

    invoke-virtual {p1, v0, p0}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_1f
    :goto_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->a1:J

    invoke-static {p1}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/transsion/utils/a;->x(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->I6:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J0()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G2:Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;->updateBackgroundColors(Z)V

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onDetachedFromWindow()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->F6:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0()Z

    move-result p0

    return p0
.end method

.method public onPlayStatusEnd()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onPlayStatusEnd()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;->c()V

    :cond_0
    return-void
.end method

.method public onPlayUIStatusChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onPlayUIStatusChange(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateSpeed()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->K6:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->showNewPlayerFeaturesBubble(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "VideoTouchLayoutNew"

    const-string p1, "onTouchEvent return false"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->e0:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVideoPlayerStateChange(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->onVideoPlayerStateChange(I)V

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    instance-of p1, p1, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoTouchLayoutNew"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lk8c;

    invoke-direct {p1, p0, p2}, Lk8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVolumeChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->syncMuteWithSystemVolume()V

    return-void
.end method

.method public onWindowInfoChange(Lwoc;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onWindowInfoChange(Lwoc;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r1(Lwoc;Z)V

    return-void
.end method

.method public final p1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ll9;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    new-instance v1, Lf8c;

    invoke-direct {v1, p0}, Lf8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->h1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(IF)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->q(IF)V

    return-void
.end method

.method public final q1()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s1:Lcom/transsion/widgets/ClockView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s1:Lcom/transsion/widgets/ClockView;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v1, v6}, Lcom/transsion/widgets/ClockView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r1:Lcom/transsion/widgets/battery/BatteryMeterView;

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->r1:Lcom/transsion/widgets/battery/BatteryMeterView;

    if-eqz v0, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v1, v4}, Lcom/transsion/widgets/battery/BatteryMeterView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->p1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateSpeed()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J0()V

    return-void
.end method

.method public final r1(Lwoc;Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowState fromVisibleChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTouchLayoutNew"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lwoc;->g:Z

    iget-boolean v1, p1, Lwoc;->c:Z

    iget-boolean v2, p1, Lwoc;->f:Z

    iget-object v3, p1, Lwoc;->m:Lwoc;

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->j1(Lwoc;ZZ)V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_land_small_tablet:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$id;->fold_land_small:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/magicvideo/R$id;->small_window:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1()V

    return-void

    :cond_2
    iget v2, p1, Lwoc;->a:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_12

    if-eq v2, v4, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, v5}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setFastIconVisible(I)V

    if-eqz v1, :cond_4

    sget p1, Lcom/transsion/magicvideo/R$id;->split_flat:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-nez p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->half_open_flat:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/16 :goto_3

    :cond_5
    sget p1, Lcom/transsion/magicvideo/R$id;->half_open_flat:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_6
    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v5}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setFastIconVisible(I)V

    if-eqz v1, :cond_8

    sget p1, Lcom/transsion/magicvideo/R$id;->split_flat:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    iget p1, p1, Lwoc;->b:I

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto/16 :goto_3

    :cond_9
    sget p1, Lcom/transsion/magicvideo/R$id;->flat:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, v5}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setFastIconVisible(I)V

    if-eqz v1, :cond_b

    sget p1, Lcom/transsion/magicvideo/R$id;->split:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    if-eqz v1, :cond_c

    instance-of v2, v1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v2, :cond_c

    iget-boolean v2, v3, Lwoc;->c:Z

    if-eqz v2, :cond_c

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1, v5}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    :cond_c
    if-eqz v0, :cond_d

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_land:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_1

    :cond_d
    if-nez p2, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_10

    iget-boolean p2, v3, Lwoc;->g:Z

    if-eqz p2, :cond_e

    iget p2, v3, Lwoc;->a:I

    if-ne p2, v4, :cond_e

    sget p1, Lcom/transsion/magicvideo/R$id;->half_open:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_1

    :cond_e
    iget p1, p1, Lwoc;->b:I

    if-ne p1, v4, :cond_f

    sget p1, Lcom/transsion/magicvideo/R$id;->half_open:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideNewPlayerFeaturesBubble()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->half_open:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->half_open:I

    sget v0, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    goto :goto_1

    :cond_11
    sget p1, Lcom/transsion/magicvideo/R$id;->half_open:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_1

    :cond_12
    if-eqz v1, :cond_14

    if-nez p2, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_13

    iget p1, p1, Lwoc;->b:I

    if-ne p1, v4, :cond_13

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->split:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_3

    :cond_13
    sget p1, Lcom/transsion/magicvideo/R$id;->split:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    goto :goto_1

    :cond_14
    if-eqz v0, :cond_15

    sget p1, Lcom/transsion/magicvideo/R$id;->fold_land:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    invoke-direct {p0, v5}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setFastIconVisible(I)V

    :goto_1
    move v4, v5

    goto :goto_3

    :cond_15
    if-nez p2, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_16

    iget p1, p1, Lwoc;->b:I

    if-ne p1, v4, :cond_16

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_2

    :cond_16
    sget p1, Lcom/transsion/magicvideo/R$id;->start:I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0(I)V

    move v4, v5

    :goto_2
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setFastIconVisible(I)V

    :goto_3
    if-eqz v4, :cond_17

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->N0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance p2, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$d;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$d;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    goto :goto_4

    :cond_17
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q1()V

    :goto_4
    return-void
.end method

.method public refrashFar()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->d0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->j1:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k1:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V1:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->U0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentItem(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J6:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x1:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    move p1, v0

    :cond_1
    sget-object p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x1:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateCloudResourceType(ZZZ)V

    return-void
.end method

.method public setFarListiener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->L6:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFromInternet(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->setFromInternet(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->initPlaySpeed()V

    return-void
.end method

.method public setKtShareInfo(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->q5:Z

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k6:Ljava/lang/String;

    return-void
.end method

.method public setMediaPlayTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->W0:Lcom/transsion/widgets/MarqueTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->W0:Lcom/transsion/widgets/MarqueTextView;

    invoke-virtual {p0}, Lcom/transsion/widgets/MarqueTextView;->resetMarque()V

    :cond_1
    return-void
.end method

.method public setMusicMode(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->setMusicMode(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J0()V

    return-void
.end method

.method public setOnRestoreVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->y1:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setPicInPicState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->b1:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShowPicInPic"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->b1:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoTouchLayoutNew"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPipDisable()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->R0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->K6:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/transsion/playercommon/core/MainApp;->C:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/JumpBean;->getExternal_jump_info_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/transsion/playercommon/core/MainApp;->C:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/JumpBean;->getExternal_jump_info_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    instance-of v3, v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v1, v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->l0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/transsion/playercommon/core/MainApp;->C:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/appconfig/JumpBean;->getExternal_jump_info_list()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {v4, v1}, Lraa;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getJump_app_pkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->needJump(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Lcom/transsion/dbdata/beans/media/JumpMediaItem;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;-><init>()V

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/media/JumpMediaItem;->setJumpBean(Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f2:Z

    new-instance v3, Lhb0$a;

    const-string v4, "value"

    invoke-direct {v3, v4, v1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lhb0$a;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "value1"

    invoke-direct {v1, v5, v4}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v3, v1}, [Lhb0$a;

    move-result-object v1

    const-string v3, "vd_cp_playlist_jump_show"

    invoke-static {v3, v1}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    goto :goto_0

    :cond_3
    const-string v1, "jumpBean is null or external_jump_info_list is null or size is 0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "VideoTouchLayoutNew"

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->X0:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->J6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    invoke-virtual {p0, v2, v2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->i1(ZZ)V

    return-void
.end method

.method public setVideoPlayClickListener(Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->M0:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->n:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "VideoTouchLayoutNew"

    const-string v0, "force hide this for pipMode"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showNewPlayerFeaturesBubble(Landroid/view/View;Z)V
    .locals 3

    sget-boolean p2, Lpp3;->b:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p2}, Lw6c;->p(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Ll9;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p2}, Lw6c;->o(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->e1:Landroid/content/Context;

    invoke-static {p2}, Lraa;->i(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p2, "guide_vd_cp_ftips_show"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p2, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$6;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/View;)V

    const-wide/16 p0, 0x14

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public syncMuteWithSystemVolume()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t()I

    move-result v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    if-gtz v0, :cond_1

    iget-boolean v0, v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lrtb;->m(I)V

    iget-boolean v0, v1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCloudResourceType(ZZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCloudResourceType: isKt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isMiMedia:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",supportKtShare:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTouchLayoutNew"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k5:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->k5:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_icon_download_light:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/magicvideo/R$drawable;->video_share_light:I

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G2:Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->l1:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/CustomMediaIconViewGroup;->removeIcon(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public updatePlayPauseButtonVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->T0:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateScaleType()V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f1:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->f1:I

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->os_full_screen_fill:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->os_full_screen:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Q0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->os_fit_to_screen:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public updateSpeed()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->i(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->d1:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/magicvideo/R$string;->speed_icon:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_2

    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->E0:I

    :goto_1
    int-to-float v2, v2

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->F0:I

    goto :goto_1

    :goto_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1(Z)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->V0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->Y0:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->m1(Z)V

    :goto_3
    return-void
.end method

.method public updateTimer(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G1:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateVideoToMusicBtn(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->l1:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$string;->os_earphone:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public updateVolumeIcon(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->S0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/magicvideo/R$string;->os_volume_off:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/magicvideo/R$string;->os_volume2:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public updateYoutube(Z)V
    .locals 3

    new-instance v0, Ll8c;

    invoke-direct {v0, p0, p1}, Ll8c;-><init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Z)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
