.class public Lk78;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk78$d;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public d:Z

.field public e:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public f:Lcom/transsion/widgetslib/dialog/d;

.field public g:Lcom/transsion/widgetslib/dialog/InputDialog;

.field public h:Lk78$d;

.field public i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

.field public j:Ljava/util/ArrayList;

.field public k:Lcom/transsion/dbdata/database/PlayList;

.field public l:Landroid/app/Dialog;

.field public m:J

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Lk78;->J(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->b:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    .line 8
    iput-object p2, p0, Lk78;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    .line 9
    invoke-virtual {p0, p1}, Lk78;->J(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->b:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lk78;->d:Z

    .line 14
    iput-object p2, p0, Lk78;->b:Ljava/util/ArrayList;

    .line 15
    iput-boolean p3, p0, Lk78;->n:Z

    .line 16
    invoke-virtual {p0, p1}, Lk78;->J(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic A(Lk78;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lk78;->U(Ljava/util/ArrayList;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic B(Lk78;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic C(Lk78;)Lcom/transsion/dbdata/database/PlayList;
    .locals 0

    iget-object p0, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    return-object p0
.end method

.method public static bridge synthetic D(Lk78;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->t0(Z)V

    return-void
.end method

.method public static synthetic L(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Long;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lao;->m0(Ljava/lang/String;Z)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->Z()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static synthetic R(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic T(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic V(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->Z()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static synthetic X(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic Z(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->Z()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static synthetic a(Lk78;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lk78;->m0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lk78;->R(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lk78;->l0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lk78;->f0(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lk78;->X(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lk78;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk78;->M(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic f0(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic g(Lk78;Lxk5;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lk78;->Y(Lxk5;Ljava/util/ArrayList;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lk78;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->b0(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lk78;->L(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lk78;->P(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lk78;->Z(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic l(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lk78;->V(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->K()V

    return-void
.end method

.method public static synthetic m(Lk78;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk78;->j0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lk78;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->c0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o(Lk78;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lk78;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lk78;->W(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic q(Lk78;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->S(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lk78;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk78;->O(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic s(Lk78;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lk78;->a0(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic t(Lk78;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk78;->e0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Lk78;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk78;->Q(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic v(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lk78;->k0(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic w(Lk78;Landroid/content/Context;ZZLcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lk78;->h0(Landroid/content/Context;ZZLcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lk78;Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZLandroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lk78;->g0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lk78;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk78;->N(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lk78;->T(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 6

    iget-object v0, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/audio/R$string;->rename:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->done:I

    new-instance v2, Lk68;

    invoke-direct {v2, p0}, Lk68;-><init>(Lk78;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v2, Ll68;

    invoke-direct {v2, p0}, Ll68;-><init>(Lk78;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v2, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    iget-object v2, v2, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    new-instance v3, Lm68;

    invoke-direct {v3}, Lm68;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Lk78$c;

    invoke-direct {v2, p0}, Lk78$c;-><init>(Lk78;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->os_text_quaternary_color:I

    iget-object v4, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_1
    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, v1}, Lk78;->t0(Z)V

    return-void
.end method

.method public final B0(Landroid/view/View;)V
    .locals 2

    sget p0, Lcom/transsion/playercommon/R$id;->rv_video_play_filelist:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/audio/R$id;->dialog_empty_rl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->text_no_videos:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->no_audio:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final C0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;ZZ)V
    .locals 1

    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p5

    iput-object p5, p0, Lk78;->l:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p5

    if-eqz p5, :cond_0

    sget-boolean p5, Lpp3;->a:Z

    if-nez p5, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1405

    invoke-virtual {p5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    sget p5, Lcom/transsion/audio/R$id;->iv_back:I

    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    const/16 p4, 0x8

    :goto_0
    invoke-virtual {p5, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p4, Lcom/transsion/playercommon/R$id;->tv_create_new_list:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    new-instance v0, Lk78$a;

    invoke-direct {v0, p0}, Lk78$a;-><init>(Lk78;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, La78;

    invoke-direct {p4, p2}, La78;-><init>(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V

    invoke-virtual {p5, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p4, Lcom/transsion/playercommon/R$id;->rv_video_play_filelist:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView;

    sget p5, Lcom/transsion/playercommon/R$id;->lottie_no_videos_view:I

    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/common/R$drawable;->ic_audio_empty_illustration:I

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p5, Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-direct {p5, p1}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    new-instance p5, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {p5, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p3}, Lk78;->B0(Landroid/view/View;)V

    iget-object p1, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object p3, p0, Lk78;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    new-instance p3, Lb78;

    invoke-direct {p3, p0, p2}, Lb78;-><init>(Lk78;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lk78;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk78;->a:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lp68;

    invoke-direct {v1, p1}, Lp68;-><init>(Ljava/lang/String;)V

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

    new-instance v1, Lq68;

    invoke-direct {v1, p0, p1}, Lq68;-><init>(Lk78;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public F(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 2

    iget-boolean v0, p0, Lk78;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk78;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lk78;->d:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lk78;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk78;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lk78;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    :goto_0
    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ls68;

    invoke-direct {v1, p0, p1}, Ls68;-><init>(Lk78;Lcom/transsion/dbdata/database/PlayList;)V

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

    new-instance v1, Lu68;

    invoke-direct {v1, p0, p1}, Lu68;-><init>(Lk78;Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/PlayList;

    iget-object v2, v2, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget p0, Lcom/transsion/audio/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1

    :cond_3
    iget-object p0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

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

    check-cast v0, Lcom/transsion/dbdata/database/PlayListItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/PlayListItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/transsion/audio/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public I()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lk78;->m:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PlayListOperateUtils"

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

.method public final J(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lk78;->a:Landroid/content/Context;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    return-void
.end method

.method public final K(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Z)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lao;->U()Lao;

    move-result-object p4

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p4, p1, v1, p3, v0}, Lao;->a0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lao;->U()Lao;

    move-result-object p4

    int-to-long v0, p1

    invoke-virtual {p4, p2, v0, v1, p3}, Lao;->n0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I

    :goto_0
    return p0
.end method

.method public final synthetic M(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
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

    const-string v1, "PlayListOperateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/database/PlayList;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget-object p1, p0, Lk78;->h:Lk78$d;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lk78$d;->b(Lcom/transsion/dbdata/database/PlayList;)V

    :cond_1
    invoke-virtual {p0, v0}, Lk78;->F(Lcom/transsion/dbdata/database/PlayList;)V

    iget-object p1, p0, Lk78;->l:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lk78;->l:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic N(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    iget-boolean p2, p0, Lk78;->d:Z

    const/4 v0, 0x1

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lk78;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v5, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget-object v6, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    iget v7, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    if-ne v7, v1, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    invoke-virtual {p0, v5, v6, v4, v7}, Lk78;->K(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget-object v3, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    iget-object v4, p0, Lk78;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget p1, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0, p2, v3, v4, v0}, Lk78;->K(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Z)Z

    move-result v3

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic O(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lk78;->n:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/audio/R$string;->song_existed:I

    invoke-static {p2}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->add_to_playlist_toast:I

    iget-object v2, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget p2, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x41f

    invoke-virtual {p2, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->p(Z)V

    :goto_1
    iget-object p0, p0, Lk78;->h:Lk78$d;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lk78$d;->b(Lcom/transsion/dbdata/database/PlayList;)V

    :cond_3
    return-void
.end method

.method public final synthetic Q(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lk78;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic S(Ljava/util/List;)V
    .locals 1

    iget-object p1, p0, Lk78;->a:Landroid/content/Context;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lk78;->a:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lx68;

    invoke-direct {v0}, Lx68;-><init>()V

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

    new-instance v0, Ly68;

    invoke-direct {v0, p0}, Ly68;-><init>(Lk78;)V

    new-instance p0, Lz68;

    invoke-direct {p0}, Lz68;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic U(Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laf9;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lk78;->a:Landroid/content/Context;

    invoke-static {p3}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p3

    new-instance v0, Lf78;

    invoke-direct {v0}, Lf78;-><init>()V

    invoke-virtual {p3, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p3

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p3

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p3

    new-instance v0, Lg78;

    invoke-direct {v0, p0, p1, p2}, Lg78;-><init>(Lk78;Ljava/util/ArrayList;Z)V

    new-instance p0, Lh78;

    invoke-direct {p0}, Lh78;-><init>()V

    invoke-virtual {p3, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic W(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {p3}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string p3, "is_last"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lk78;->a:Landroid/content/Context;

    const-class p3, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic Y(Lxk5;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laf9;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p4, v0, v2

    if-gez p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lk78;->a:Landroid/content/Context;

    invoke-static {p4}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p4

    invoke-interface {p1}, Lxk5;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p4, Li78;

    invoke-direct {p4}, Li78;-><init>()V

    invoke-virtual {p1, p4}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p4, Lj78;

    invoke-direct {p4, p0, p2, p3}, Lj78;-><init>(Lk78;Ljava/util/ArrayList;Z)V

    new-instance p0, Lj68;

    invoke-direct {p0}, Lj68;-><init>()V

    invoke-virtual {p1, p4, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic a0(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {p3}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string p3, "is_last"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lk78;->a:Landroid/content/Context;

    const-class p3, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic b0(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p0, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p1, p0}, Lao;->w0(Lcom/transsion/dbdata/database/PlayList;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic c0(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Lk78;->h:Lk78$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    invoke-interface {p1, v0}, Lk78$d;->a(Lcom/transsion/dbdata/database/PlayList;)V

    :cond_0
    iget-object p0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->s(Z)V

    return-void
.end method

.method public final synthetic d0(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0, p1}, Lk78;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/audio/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final synthetic g0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZLandroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lk78;->C0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final synthetic h0(Landroid/content/Context;ZZLcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lk78;->C0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final synthetic i0(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lk78;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0, p1}, Lk78;->q0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic j0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final synthetic m0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Lk78;->I()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lk78;->m:J

    iget-object p2, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p0, p2}, Lk78;->F(Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public n0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V
    .locals 3

    iget-object v0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lr68;

    invoke-direct {v2, p0}, Lr68;-><init>(Lk78;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lk78;->z0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V

    return-void
.end method

.method public o0(Ljava/util/ArrayList;Z)V
    .locals 4

    iget-object v0, p0, Lk78;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lk78;->a:Landroid/content/Context;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Li68;

    invoke-direct {v3, p0, v0, p1, p2}, Li68;-><init>(Lk78;Lxk5;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lt68;

    invoke-direct {v2, p0, p1, p2}, Lt68;-><init>(Lk78;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_1
    return-void
.end method

.method public p0()V
    .locals 2

    iget-object v0, p0, Lk78;->e:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    instance-of v1, v1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lk78;->a:Landroid/content/Context;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    iput-object p1, v0, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    iget-object p1, p0, Lk78;->a:Landroid/content/Context;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Ln68;

    invoke-direct {v0, p0}, Ln68;-><init>(Lk78;)V

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

    new-instance v0, Lo68;

    invoke-direct {v0, p0}, Lo68;-><init>(Lk78;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public r0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lk78;->i:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lk78;->j:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public s0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lk78;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public final t0(Z)V
    .locals 1

    iget-object p0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

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

.method public u0(Z)V
    .locals 0

    iput-boolean p1, p0, Lk78;->d:Z

    return-void
.end method

.method public v0(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 0

    iput-object p1, p0, Lk78;->k:Lcom/transsion/dbdata/database/PlayList;

    return-void
.end method

.method public w0(Lk78$d;)V
    .locals 0

    iput-object p1, p0, Lk78;->h:Lk78$d;

    return-void
.end method

.method public x0(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lk78;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public y0()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Lk78;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/audio/R$string;->new_playlist:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->Save:I

    new-instance v2, Lc78;

    invoke-direct {v2, p0}, Lc78;-><init>(Lk78;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v2, Ld78;

    invoke-direct {v2, p0}, Ld78;-><init>(Lk78;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v2, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le78;

    invoke-direct {v3}, Le78;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Lk78$b;

    invoke-direct {v2, p0}, Lk78$b;-><init>(Lk78;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$color;->os_text_quaternary_color:I

    iget-object v4, p0, Lk78;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_0
    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lk78;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Lk78;->g:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, v1}, Lk78;->t0(Z)V

    return-void
.end method

.method public final z0(Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance v6, Lv68;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lv68;-><init>(Lk78;Landroid/content/Context;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;ZZ)V

    invoke-virtual {p2, v6}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->J(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    sget v0, Lcom/transsion/audio/R$layout;->audio_playlist_bucket_list:I

    const-string v1, "play_list_tag"

    invoke-direct {p2, p1, v1, v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Lw68;

    invoke-direct {v0, p0, p1, p3, p4}, Lw68;-><init>(Lk78;Landroid/content/Context;ZZ)V

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V

    if-eqz p4, :cond_1

    sget p0, Lcom/transsion/audio/R$drawable;->list_dialog_background:I

    invoke-virtual {p2, p0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->d(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V

    :goto_0
    return-void
.end method
