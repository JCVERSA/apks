.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public O:I

.field public P:Lcom/transsion/audio/lyrics/LrcSearcher;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0()V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->q0()V

    return-void
.end method

.method public static bridge synthetic g0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->R:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic h0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic i0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->O:I

    return p0
.end method

.method public static bridge synthetic j0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->Q:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->n0()V

    return-void
.end method

.method public static bridge synthetic l0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->s0()V

    return-void
.end method

.method public static bridge synthetic m0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->v0()V

    return-void
.end method

.method public static synthetic q0()V
    .locals 3

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "show_hide_loading_lyric_view"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private v0()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/audio/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->lyric_local_setting_add_confirm:I

    new-instance v2, Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;

    invoke-direct {v2, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->lyric_local_setting_add_dialog_message:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->lyric_local_setting_add_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "audio_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->O:I

    :cond_0
    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->P:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->P:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->w0()V

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->P:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->o()Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public o0()V
    .locals 4

    sget v0, Lcom/transsion/audio/R$layout;->dialog_search_lrc_type:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    sget v3, Lcom/transsion/audio/R$string;->lyric_setting:I

    invoke-virtual {v1, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v1, Lcom/transsion/audio/R$id;->ll_lyric_local:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/transsion/audio/activities/SearchLyricDialogActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$b;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/audio/R$id;->ll_lyric_remote:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$c;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p0, Lpp3;->z:Z

    if-nez p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->R:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p0(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$string;->lyrics:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r0(Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$layout;->lyric_local_preview:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    new-instance v2, Lcom/transsion/audio/activities/SearchLyricDialogActivity$d;

    invoke-direct {v2, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$d;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->lyric_preview:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->u0(Landroid/view/View;Ljava/lang/String;)V

    sget p1, Lcom/transsion/audio/R$id;->tv_btn:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$e;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$e;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s0()V
    .locals 4

    new-instance v0, Le59;

    invoke-direct {v0}, Le59;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->R:Ljava/lang/Runnable;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->R:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->P:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->Q:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/audio/lyrics/LrcSearcher;->r(Ljava/lang/String;Z)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$j;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public t0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/audio/widgets/LyricLocalSelectView;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->setCurrentPath(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->lyric_search_local:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    new-instance v2, Lcom/transsion/audio/activities/SearchLyricDialogActivity$f;

    invoke-direct {v2, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$f;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance v1, Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->setListener(Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;)V

    :cond_1
    return-void
.end method

.method public final u0(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->P:Lcom/transsion/audio/lyrics/LrcSearcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->r(Ljava/lang/String;Z)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;-><init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final w0()V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->O:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->o0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->t0()V

    :goto_0
    return-void
.end method
