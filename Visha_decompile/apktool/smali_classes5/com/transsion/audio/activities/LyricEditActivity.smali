.class public Lcom/transsion/audio/activities/LyricEditActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public O:J

.field public P:Z

.field public Q:Lcom/transsion/audio/player/MusicPlayManager;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/ImageView;

.field public W:Landroid/widget/ImageView;

.field public X:Landroid/widget/ImageView;

.field public Y:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public Z:Landroid/widget/EditText;

.field public a0:Lcom/transsion/audio/lyrics/LrcSearcher;

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/Runnable;

.field public final d0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

.field public final e0:Lcom/transsion/audio/player/MusicPlayManager$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->b0:Ljava/lang/String;

    new-instance v0, Lcv5;

    invoke-direct {v0, p0}, Lcv5;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/audio/activities/LyricEditActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/LyricEditActivity$c;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->d0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    new-instance v0, Lcom/transsion/audio/activities/LyricEditActivity$d;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/LyricEditActivity$d;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    return-void
.end method

.method public static A0(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4df

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static B0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_url_from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x4da

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private G0()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->a0:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->u()V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->a0:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Y:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->a0:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-virtual {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->s()Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/LyricEditActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/LyricEditActivity$b;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method private H0()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private J0(Landroid/widget/TextView;)V
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->E0()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/audio/activities/LyricEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/audio/activities/LyricEditActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/audio/activities/LyricEditActivity;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/audio/activities/LyricEditActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->b0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/audio/activities/LyricEditActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->b0:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/audio/activities/LyricEditActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity;->x0(Z)V

    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/audio/activities/LyricEditActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->y0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/audio/activities/LyricEditActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity;->J0(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public C0(JJJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

    iget-object p3, p0, Lcom/transsion/audio/activities/LyricEditActivity;->R:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->S:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public D0()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E0()V
    .locals 12

    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v8, v4

    :try_start_1
    iget-object v4, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v8, v2

    const-wide/16 v10, 0x0

    if-gtz v0, :cond_0

    :goto_0
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/audio/activities/LyricEditActivity;->C0(JJJ)V

    return-void

    :cond_0
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/audio/activities/LyricEditActivity;->L0(JJJ)V

    return-void

    :catchall_0
    move-exception v4

    goto :goto_1

    :catchall_1
    move-exception v4

    move-wide v8, v2

    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/transsion/audio/activities/LyricEditActivity;->c0:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long v0, v8, v2

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/audio/activities/LyricEditActivity;->L0(JJJ)V

    throw v4
.end method

.method public final F0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->a0:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->B(Ljava/lang/String;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/activities/LyricEditActivity$f;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/LyricEditActivity$f;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final I0()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->message_lyric_edit_dialog:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->edit_discard:I

    new-instance v2, Lcom/transsion/audio/activities/LyricEditActivity$e;

    invoke-direct {v2, p0}, Lcom/transsion/audio/activities/LyricEditActivity$e;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public K0(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->X:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/audio/R$drawable;->icon_video_play_pause_new:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/audio/R$drawable;->icon_video_play_play_new:I

    :goto_1
    invoke-static {p0, p1}, Lcd;->f(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final L0(JJJ)V
    .locals 1

    iget-wide p5, p0, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

    cmp-long p5, p5, p3

    if-eqz p5, :cond_0

    iput-wide p3, p0, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

    iget-object p5, p0, Lcom/transsion/audio/activities/LyricEditActivity;->S:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide p5, p0, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

    cmp-long v0, p1, p5

    if-lez v0, :cond_1

    move-wide p1, p5

    :cond_1
    const-wide/16 p5, 0x64

    mul-long/2addr p5, p1

    long-to-float p5, p5

    long-to-float p3, p3

    div-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget-boolean p4, p0, Lcom/transsion/audio/activities/LyricEditActivity;->P:Z

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/transsion/audio/activities/LyricEditActivity;->R:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    sget v1, Lcom/transsion/audio/R$anim;->activity_audio_slide_out_down:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 4

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$color;->lyric_edit_background:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x2011

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "vd_audio_lyrics_edit_cancel"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->b0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vd_audio_lyrics_edit_op"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->I0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_play:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vd_audio_lyrics_edit_play"

    const-string v2, "action"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-direct {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->H0()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-virtual {v0, p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$id;->iv_cancel:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/audio/R$id;->iv_confirm:I

    if-ne p1, v0, :cond_3

    const-string p1, "vd_audio_lyrics_edit_save"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->b0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "vd_audio_lyrics_edit_op"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->y0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "google_search_for_lyrics"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "vd_audio_lyrics_google_result_save"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->F0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/audio/R$layout;->activity_lyric_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/audio/R$id;->seekbar_video_play_bottom:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget p1, Lcom/transsion/audio/R$id;->tv_video_play_current_progress:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->R:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->tv_video_play_total_progress:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->S:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->tv_audio_play_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->T:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->tv_audio_artist:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->U:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$id;->iv_cancel:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->V:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/audio/R$id;->iv_confirm:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->W:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/audio/R$id;->iv_play:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->X:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/audio/R$id;->et_lyrics:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->d0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    invoke-static {p0}, Lvha;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->W:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->q1(Z)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity;->K0(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Y:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->T:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Y:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->G0()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->z0()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->q1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Q:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->e0:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->D0()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->E0()V

    return-void
.end method

.method public final x0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->W:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->W:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final y0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "web_url_from"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final z0()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/LyricEditActivity;->x0(Z)V

    iget-object v0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/audio/activities/LyricEditActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/LyricEditActivity$a;-><init>(Lcom/transsion/audio/activities/LyricEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
