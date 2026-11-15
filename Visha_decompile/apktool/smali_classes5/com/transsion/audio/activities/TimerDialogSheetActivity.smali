.class public Lcom/transsion/audio/activities/TimerDialogSheetActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

.field public O:Ljava/util/List;

.field public P:Lcom/transsion/audio/player/MusicPlayManager;

.field public Q:I

.field public R:Landroidx/recyclerview/widget/RecyclerView;

.field public S:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    new-instance v0, Lcom/transsion/audio/activities/TimerDialogSheetActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity$1;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Switch;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->r0(Landroid/widget/Switch;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->q0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->p0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->t0(Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->s0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->v0(Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;II)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->w0(Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;II)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->u0(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic n0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic o0(Lcom/transsion/audio/activities/TimerDialogSheetActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->y0()V

    return-void
.end method

.method private synthetic q0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->z0(I)V

    return-void
.end method

.method public static synthetic s0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->removeTimeChangeUpdate()V

    return-void
.end method

.method private y0()V
    .locals 7

    const-string v0, "music_timer"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const-string v0, "music_timer_for_mark"

    invoke-static {p0, v0, v1, v2}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lvy5;->c(I)V

    const-string v0, "music_timer_finish_current"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "music_timer_choice"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->B0(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->B0(J)V

    :goto_0
    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->B0(J)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$layout;->video_custom_timepicker:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->timer_confirm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljoa;

    invoke-direct {v2}, Ljoa;-><init>()V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->music_timer_custom_format_m:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string v1, "vd_audio_timer_pop_custom_show"

    invoke-static {v1}, Lhb0;->markDirect(Ljava/lang/String;)V

    sget v1, Lcom/transsion/playercommon/R$id;->time_picker:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/CustomTimePicker;

    new-instance v2, Lkoa;

    invoke-direct {v2, v1}, Lkoa;-><init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Lloa;

    invoke-direct {v5, p0, v0, v1}, Lloa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lmoa;

    invoke-direct {v5, p0, v0}, Lmoa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance v3, Lnoa;

    invoke-direct {v3, p0, v2, v0, v1}, Lnoa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;)V

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->setOnTimeChangeListener(Lcom/transsion/playercommon/widgets/CustomTimePicker$c;)V

    return-void
.end method

.method public B0(J)V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    iget v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    if-ne v0, v2, :cond_0

    iput-wide p1, v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iput-wide v4, v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public initData()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    new-instance v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    sget v2, Lcom/transsion/audio/R$string;->music_timer_close:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0xf

    invoke-direct {v1, v2, v5, v6}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x1e

    invoke-direct {v1, v2, v5, v6}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x2d

    invoke-direct {v1, v2, v5, v6}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x3c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, 0x3c

    invoke-direct {v1, v0, v5, v6}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    sget v1, Lcom/transsion/audio/R$string;->timer_custom:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "music_timer"

    invoke-static {p0, v0, v3, v4}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    if-eqz v2, :cond_0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    :cond_1
    iput-wide v3, v2, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    iget v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->r(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    iget-object v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    iget v1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    iget-wide v0, v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->B0(J)V

    iget v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public initRv(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$id;->rv_timer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    new-instance v0, Lgoa;

    invoke-direct {v0, p0}, Lgoa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    new-instance v0, Lhoa;

    invoke-direct {v0, p0}, Lhoa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initSwitchBtn(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/audio/R$id;->switch_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const-string v0, "music_timer_finish_current"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Lioa;

    invoke-direct {v0, p0, p1}, Lioa;-><init>(Lcom/transsion/audio/activities/TimerDialogSheetActivity;Landroid/widget/Switch;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->P:Lcom/transsion/audio/player/MusicPlayManager;

    const-string v0, "music_timer_choice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    const-string v0, "music_timer_finish_current"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget v2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    invoke-static {v2, v0}, Lvy5;->e(II)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/audio/R$layout;->audio_timer_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->initRv(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->initData()V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->initSwitchBtn(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->play_timer:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final synthetic p0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->z0(I)V

    return-void
.end method

.method public final synthetic r0(Landroid/widget/Switch;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {p2}, Lvy5;->f(I)V

    const-string p2, "music_timer_finish_current"

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p0, p2, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic u0(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p2}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedMin()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedHour()I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v2, 0x36ee80

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    const/4 p1, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->x0(JI)V

    long-to-int p0, v0

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Lvy5;->b(I)V

    return-void
.end method

.method public final synthetic v0(Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->r(I)V

    :cond_0
    const-string p0, "vd_audio_timer_pop_custom_cancel_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic w0(Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;II)V
    .locals 0

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedHour()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->music_timer_custom_format_m:I

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedMin()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$string;->music_timer_custom_format_hm:I

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedHour()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->getmSelectedMin()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/d;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final x0(JI)V
    .locals 3

    const-string v0, "music_timer_choice"

    invoke-static {p0, v0, p3}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez p3, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    const-string v2, "music_timer"

    invoke-static {p0, v2, v0, v1}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v0, "music_timer_for_mark"

    invoke-static {p0, v0, p1, p2}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->P:Lcom/transsion/audio/player/MusicPlayManager;

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->H(Z)V

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-virtual {p1, p3}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->r(I)V

    iput p3, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->Q:I

    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->S:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final z0(I)V
    .locals 4

    invoke-static {p1}, Lvy5;->d(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    iget-wide v0, v0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->b:J

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->x0(JI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->N:Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->A0()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/audio/activities/TimerDialogSheetActivity;->x0(JI)V

    :goto_0
    return-void
.end method
