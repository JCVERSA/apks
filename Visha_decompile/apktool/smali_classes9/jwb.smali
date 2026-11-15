.class public Ljwb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwb$d;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public d:Z

.field public e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public f:Lcom/transsion/widgetslib/dialog/d;

.field public g:Lcom/transsion/widgetslib/dialog/InputDialog;

.field public h:Ljwb$d;

.field public i:Ljava/util/ArrayList;

.field public j:Lcom/transsion/dbdata/database/VideoPlayList;

.field public k:Landroid/app/Dialog;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwb;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljwb;->l:Z

    invoke-virtual {p0, p1}, Ljwb;->v(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic E(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic H(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Ljwb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljwb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->F(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljwb;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->B(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Ljwb;->E(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Ljwb;->H(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Ljwb;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljwb;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->A(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljwb;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljwb;->G(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljwb;->z(Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljwb;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljwb;->D(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Ljwb;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljwb;->y(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static bridge synthetic l(Ljwb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ljwb;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic m(Ljwb;)Lcom/transsion/dbdata/database/VideoPlayList;
    .locals 0

    iget-object p0, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    return-object p0
.end method

.method public static bridge synthetic n(Ljwb;)Lcom/transsion/playercommon/videomodel/VideoPlayListModel;
    .locals 0

    iget-object p0, p0, Ljwb;->e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    return-object p0
.end method

.method public static bridge synthetic o(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->u(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljwb;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ljwb;->J(Z)V

    return-void
.end method

.method public static synthetic x(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->f(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p0, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p1, p0}, Ltpb;->a0(Lcom/transsion/dbdata/database/VideoPlayList;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic B(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Ljwb;->h:Ljwb$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-interface {p1, v0}, Ljwb$d;->a(Lcom/transsion/dbdata/database/VideoPlayList;)V

    :cond_0
    iget-object p0, p0, Ljwb;->e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->o(Z)V

    return-void
.end method

.method public final synthetic C(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0, p1}, Ljwb;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic D(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final synthetic F(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljwb;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0, p1}, Ljwb;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/magicvideo/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic G(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget-object p1, p0, Ljwb;->a:Landroid/content/Context;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lfwb;

    invoke-direct {v0, p0}, Lfwb;-><init>(Ljwb;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lgwb;

    invoke-direct {v0, p0}, Lgwb;-><init>(Ljwb;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final J(Z)V
    .locals 1

    iget-object p0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public K(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    iput-object p1, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    return-void
.end method

.method public L(Ljwb$d;)V
    .locals 0

    iput-object p1, p0, Ljwb;->h:Ljwb$d;

    return-void
.end method

.method public M()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Ljwb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/magicvideo/R$string;->new_playlist:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->Save:I

    new-instance v2, Lyvb;

    invoke-direct {v2, p0}, Lyvb;-><init>(Ljwb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v2, Lawb;

    invoke-direct {v2, p0}, Lawb;-><init>(Ljwb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v2, p0, Ljwb;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$string;->search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbwb;

    invoke-direct {v3}, Lbwb;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Ljwb$b;

    invoke-direct {v2, p0}, Ljwb$b;-><init>(Ljwb;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljwb;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$color;->os_text_quaternary_color:I

    iget-object v4, p0, Ljwb;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, v1}, Ljwb;->J(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayListOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public N()V
    .locals 6

    iget-object v0, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Ljwb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/magicvideo/R$string;->rename:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->Save:I

    new-instance v2, Lcwb;

    invoke-direct {v2, p0}, Lcwb;-><init>(Ljwb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v2, Ldwb;

    invoke-direct {v2, p0}, Ldwb;-><init>(Ljwb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v2, p0, Ljwb;->j:Lcom/transsion/dbdata/database/VideoPlayList;

    iget-object v2, v2, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    new-instance v3, Lewb;

    invoke-direct {v3}, Lewb;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Ljwb$c;

    invoke-direct {v2, p0}, Ljwb$c;-><init>(Ljwb;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Ljwb;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$color;->os_text_quaternary_color:I

    iget-object v4, p0, Ljwb;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_1
    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Ljwb;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, v1}, Ljwb;->J(Z)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljwb;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljwb;->a:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lhwb;

    invoke-direct {v1}, Lhwb;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Liwb;

    invoke-direct {v1, p0, p1}, Liwb;-><init>(Ljwb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public r(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 2

    iget-boolean v0, p0, Ljwb;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwb;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ljwb;->d:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Ljwb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Ljwb;->a:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljwb;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljwb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_0
    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lzvb;

    invoke-direct {v1, p0, p1}, Lzvb;-><init>(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Ljwb$a;

    invoke-direct {v1, p0, p1}, Ljwb$a;-><init>(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Ljwb;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljwb;->e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljwb;->i:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Ljwb;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljwb;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/VideoPlayList;

    iget-object v2, v2, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget p0, Lcom/transsion/magicvideo/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1

    :cond_3
    iget-object p0, p0, Ljwb;->e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/transsion/magicvideo/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljwb;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final u(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Ljwb;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Ljwb;->a:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Ljwb;->a:Landroid/content/Context;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Ljwb;->e:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    return-void
.end method

.method public final w(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p2, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    return p0

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p4

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p4, p1, v1, p3, v0}, Ltpb;->A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    int-to-long v3, p1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Ltpb;->Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    return p0
.end method

.method public final synthetic y(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Playlist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListOperateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object p1, p0, Ljwb;->h:Ljwb$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljwb$d;->b(Lcom/transsion/dbdata/database/VideoPlayList;)V

    :cond_0
    invoke-virtual {p0, v0}, Ljwb;->r(Lcom/transsion/dbdata/database/VideoPlayList;)V

    iget-object p1, p0, Ljwb;->k:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Ljwb;->k:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final synthetic z(Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    iget-boolean p2, p0, Ljwb;->d:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Ljwb;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v5, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object v6, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget v7, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    if-ne v7, v1, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    invoke-virtual {p0, v5, v6, v4, v7}, Ljwb;->w(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object v3, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget-object v4, p0, Ljwb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0, p2, v3, v4, v0}, Ljwb;->w(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v3

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
