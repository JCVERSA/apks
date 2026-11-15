.class public Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/CheckBox;

.field public s:Landroidx/recyclerview/widget/RecyclerView;

.field public t:Landroid/widget/LinearLayout;

.field public u:Z

.field public v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

.field public w:Ljava/util/List;

.field public x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    return p0
.end method

.method public static synthetic P(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->D0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic P0(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_cp_subtitle_downloadsub_history_pop_cl"

    const-string v1, "statue_num"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v0(ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->I0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->R0(Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic S0(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_cp_subtitle_downlodasub_history_cl_pop_track"

    const-string v1, "track"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->Q0(Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static T0()Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    invoke-direct {v1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static synthetic U(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/magicvideo/data/SubtitleOptStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->A0(Lcom/transsion/magicvideo/data/SubtitleOptStatus;)V

    return-void
.end method

.method public static synthetic X(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->S0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->C0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->G0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;ILjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w0(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/magicvideo/data/SubtitleOptStatus;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->z0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/magicvideo/data/SubtitleOptStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->B0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->O0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->P0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->L0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/dbdata/beans/SubtitleHistory;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->y0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->M0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->H0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->N0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->F0()V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->E0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private showDeleteDialog()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->delete_subtitle_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->delete_subtitle_dialog_title_multiple:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->delete_downloaded_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->delete:I

    new-instance v2, Lw2a;

    invoke-direct {v2, p0}, Lw2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v1, Lx2a;

    invoke-direct {v1}, Lx2a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "vd_cp_subtitle_downloadsub_history_del_pop"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic x0(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "add subtitle error"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SubtitleDownHistoryFragment"

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/dbdata/beans/SubtitleHistory;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    return-object p0
.end method


# virtual methods
.method public final synthetic A0(Lcom/transsion/magicvideo/data/SubtitleOptStatus;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->isOptSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->deleteSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->getSubtitleHistory()Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$string;->some_delete_fail:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/SubtitleOptStatus;->isOptSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public final synthetic C0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "vd_cp_subtitle_downloadsub_history_mulcl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->h(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return p2
.end method

.method public final synthetic D0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/SubtitleHistory;

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    iput-boolean p1, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q0(I)V

    :goto_1
    return-void
.end method

.method public final synthetic E0(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s0()V

    :cond_3
    return-void
.end method

.method public final synthetic F0()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "vd_cp_subtitle_downloadsub_history_pop"

    const-string v1, "num"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic G0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_down_success:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->g()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q0(I)V

    :cond_0
    return-void
.end method

.method public final synthetic H0(Landroid/view/View;)V
    .locals 2

    const-string p1, "btn"

    const-string v0, "modify"

    const-string v1, "vd_cp_subtitle_downloadsub_history_cl"

    invoke-static {v1, p1, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/SubtitleHistory;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->h(Z)V

    return-void
.end method

.method public final synthetic I0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public final synthetic J0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->h(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/SubtitleHistory;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic L0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->showDeleteDialog()V

    return-void
.end method

.method public final synthetic M0(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Items Selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v1, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final synthetic N0(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->h(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final synthetic O0(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "vd_cp_subtitle_downloadsub_history_pop_cl"

    const-string v1, "statue_num"

    invoke-static {v0, v1, p2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t0(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic Q0(Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vd_cp_subtitle_downlodasub_history_cl_pop_track"

    const-string v0, "track"

    invoke-static {p3, v0, p2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u:Z

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p0(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic R0(Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "vd_cp_subtitle_downlodasub_history_cl_pop_track"

    const-string v1, "track"

    invoke-static {v0, v1, p3}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u:Z

    const/4 p2, 0x0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p0(ILjava/lang/String;)V

    return-void
.end method

.method public final U0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v1, v1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->track_one:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->null_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->track_two:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->null_subtitle:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/magicvideo/R$string;->select_subtitle_track:I

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;->d(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    new-instance v3, Ly2a;

    invoke-direct {v3, p0, p1}, Ly2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    invoke-virtual {v1, v0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Lz2a;

    invoke-direct {v1, p0, p1}, Lz2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v0, La3a;

    invoke-direct {v0}, La3a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "vd_cp_subtitle_downloadsub_cl_pop"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->fragment_subtitle_down_history:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-class p2, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "tracks_value"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->y:I

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->n:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->o:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p:Landroid/widget/TextView;

    sget p2, Lcom/transsion/magicvideo/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q:Landroid/widget/TextView;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->ll_clear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->title_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->title_bar_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-direct {p1, p2, v1}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/magicvideo/R$layout;->empty_data_layout:I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_empty_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->subtitle_download_empty_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    new-instance p2, Ls2a;

    invoke-direct {p2, p0}, Ls2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    new-instance p2, Lj3a;

    invoke-direct {p2, p0}, Lj3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->v:Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;

    new-instance p2, Lk3a;

    invoke-direct {p2, p0}, Lk3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->q:Landroid/widget/TextView;

    new-instance p2, Ll3a;

    invoke-direct {p2, p0}, Ll3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->n:Landroid/widget/ImageView;

    new-instance p2, Lm3a;

    invoke-direct {p2, p0}, Lm3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->o:Landroid/widget/ImageView;

    new-instance p2, Ln3a;

    invoke-direct {p2, p0}, Ln3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r:Landroid/widget/CheckBox;

    new-instance p2, Lo3a;

    invoke-direct {p2, p0}, Lo3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->t:Landroid/widget/LinearLayout;

    new-instance p2, Lp3a;

    invoke-direct {p2, p0}, Lp3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectHistoryLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lt2a;

    invoke-direct {v0, p0}, Lt2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleHistoryLiveLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lu2a;

    invoke-direct {v0, p0}, Lu2a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->x:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isEditModeSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Ld3a;

    invoke-direct {v0, p0}, Ld3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Li3a;

    invoke-direct {p2, p0}, Li3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final p0(ILjava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lc3a;

    invoke-direct {v1, p0, p1, p2}, Lc3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Le3a;

    invoke-direct {v0, p0, p1}, Le3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;I)V

    new-instance p0, Lf3a;

    invoke-direct {p0}, Lf3a;-><init>()V

    invoke-virtual {p2, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final q0(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    const-string v0, "btn"

    const-string v1, "subtitle"

    const-string v2, "vd_cp_subtitle_downloadsub_history_cl"

    invoke-static {v2, v0, v1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lpp3;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v1, "tracks_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->U0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u:Z

    iget v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->y:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->p0(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r0(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "track_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->u:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final s0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lb3a;

    invoke-direct {v0}, Lb3a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    return-void
.end method

.method public final t0(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {p1}, Lmc7;->C([Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lg3a;

    invoke-direct {v0, p0}, Lg3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

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

    new-instance v0, Lh3a;

    invoke-direct {v0, p0}, Lh3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final u0()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lv2a;

    invoke-direct {v0}, Lv2a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final synthetic v0(ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p3, "media_id"

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p3}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iput p1, p3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iput-object p2, p3, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ltpb;->t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic w0(ILjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->r0(I)V

    :cond_0
    return-void
.end method

.method public final synthetic z0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/magicvideo/data/SubtitleOptStatus;
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lnx8;->f(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    new-instance v1, Lzl6;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lzl6;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Lzl6;->a(Ljava/util/List;)V

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltpb;->e(Lcom/transsion/dbdata/beans/SubtitleHistory;)I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltpb;->q(Ljava/lang/String;)I

    new-instance p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;

    invoke-direct {p0, p1, v3}, Lcom/transsion/magicvideo/data/SubtitleOptStatus;-><init>(Lcom/transsion/dbdata/beans/SubtitleHistory;Z)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/transsion/magicvideo/data/SubtitleOptStatus;

    invoke-direct {p0, p1, v4}, Lcom/transsion/magicvideo/data/SubtitleOptStatus;-><init>(Lcom/transsion/dbdata/beans/SubtitleHistory;Z)V

    return-object p0
.end method
