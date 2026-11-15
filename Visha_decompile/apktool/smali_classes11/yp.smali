.class public Lyp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:Lyp;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lcom/transsion/widgetslib/dialog/d;

.field public c:Ljava/lang/Runnable;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyp;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyp;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lyp;->o(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lyp;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyp;->l(Landroid/content/Context;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lyp;->k(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lyp;)V
    .locals 0

    invoke-virtual {p0}, Lyp;->j()V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lyp;->m(Landroid/content/Context;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lyp;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyp;->p(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i()Lyp;
    .locals 2

    sget-object v0, Lyp;->e:Lyp;

    if-nez v0, :cond_1

    const-class v0, Lyp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyp;->e:Lyp;

    if-nez v1, :cond_0

    new-instance v1, Lyp;

    invoke-direct {v1}, Lyp;-><init>()V

    sput-object v1, Lyp;->e:Lyp;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lyp;->e:Lyp;

    return-object v0
.end method

.method public static synthetic k(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click ll_not_prompt, value now: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusDialogManager"

    invoke-static {p1, p0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Landroid/content/Context;Landroid/widget/CompoundButton;Z)V
    .locals 0

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "audio_focus_change_notice_show"

    invoke-static {p0, p2, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic m(Landroid/content/Context;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "click allow"

    const-string p3, "AudioFocusDialogManager"

    invoke-static {p3, p2}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "audio_focus_allow_may_duck"

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canPlay running error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lvdb;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "AudioFocusDialogManager"

    const-string p1, "click cancel"

    invoke-static {p0, p1}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p0, "AudioFocusDialogManager"

    const-string v0, "dialog dismiss"

    invoke-static {p0, v0}, Lvdb;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 4

    iget-boolean v0, p0, Lyp;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyp;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyp;->d:Z

    iget-object v0, p0, Lyp;->a:Landroid/os/Handler;

    new-instance v1, Lrp;

    invoke-direct {v1, p0}, Lrp;-><init>(Lyp;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final synthetic j()V
    .locals 1

    iget-object v0, p0, Lyp;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lyp;->q(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lyp;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public final synthetic p(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->audio_focus_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->tv_notice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/playercommon/R$string;->visha_audio_allow_simultaneous_play_hint:I

    sget v3, Lcom/transsion/playercommon/R$string;->visha_Player:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/playercommon/R$id;->cb_do_not_reminder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v2, Lcom/transsion/playercommon/R$id;->ll_not_prompt:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ltp;

    invoke-direct {v3, v1}, Ltp;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lup;

    invoke-direct {v2, p1}, Lup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->allow:I

    new-instance v2, Lvp;

    invoke-direct {v2, p1, p2}, Lvp;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v0, Lwp;

    invoke-direct {v0}, Lwp;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lyp;->b:Lcom/transsion/widgetslib/dialog/d;

    new-instance p0, Lxp;

    invoke-direct {p0}, Lxp;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handle showPlayTogetherDialog error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->h(Landroid/app/Activity;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "audio_focus_change_notice_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyp;->b:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lyp;->c:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lyp;->d:Z

    return-void

    :cond_2
    const-string v1, "showPlayTogetherDialog"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const-string v2, "AudioFocusDialogManager"

    invoke-static {v2, v1}, Lvdb;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lyp;->a:Landroid/os/Handler;

    new-instance v2, Lsp;

    invoke-direct {v2, p0, v0, p1}, Lsp;-><init>(Lyp;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showPlayTogetherDialog error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method
