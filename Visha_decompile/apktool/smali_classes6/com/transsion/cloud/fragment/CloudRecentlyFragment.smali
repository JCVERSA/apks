.class public final Lcom/transsion/cloud/fragment/CloudRecentlyFragment;
.super Lcom/transsion/cloud/fragment/CloudBaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J3\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\'\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0003J!\u0010*\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008-\u0010\u001cJ\u0017\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008.\u0010\u001cJ\u000f\u0010/\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00081\u0010\u0003J-\u00107\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020305H\u0014\u00a2\u0006\u0004\u00087\u00108J/\u0010=\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000f2\u0016\u0010<\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010;0:\"\u0004\u0018\u00010;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0003R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\"\u0010N\u001a\u00020G8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u001a\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00110^8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010`\u00a8\u0006b"
    }
    d2 = {
        "Lcom/transsion/cloud/fragment/CloudRecentlyFragment;",
        "Lcom/transsion/cloud/fragment/CloudBaseFragment;",
        "<init>",
        "()V",
        "Lzfb;",
        "X0",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;)V",
        "V0",
        "backToPage",
        "stopEdit",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "adapter",
        "",
        "position",
        "",
        "child",
        "selectItem",
        "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V",
        "b1",
        "L0",
        "updateBottomOperationBar",
        "initBottomOperationBar",
        "addVideoBarShowStateObserver",
        "show",
        "notifyVideoBarShowStateChange",
        "(Z)V",
        "getBottomPadding",
        "(Z)I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "enter",
        "editMode",
        "updateViewWhenEditMode",
        "onBackPressed",
        "()Z",
        "showDeleteDialog",
        "type",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "videoCloudData",
        "",
        "videoCloudDataList",
        "refreshCloudListData",
        "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "onPause",
        "Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;",
        "l",
        "Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;",
        "mBinding",
        "m",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "mCloudDataAdapter",
        "Lcom/transsion/cloud/viewmodel/RecentlyViewModel;",
        "n",
        "Lcom/transsion/cloud/viewmodel/RecentlyViewModel;",
        "M0",
        "()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;",
        "c1",
        "(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;)V",
        "mViewModelRecently",
        "o",
        "Landroid/view/View;",
        "mLlTopMenu",
        "Lcom/transsion/widgetslib/widget/OSIconTextView;",
        "p",
        "Lcom/transsion/widgetslib/widget/OSIconTextView;",
        "mIvCkClearAll",
        "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;",
        "q",
        "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;",
        "mEditFootOperationBar",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "r",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "mMainViewModel",
        "Landroidx/lifecycle/Observer;",
        "s",
        "Landroidx/lifecycle/Observer;",
        "mVideoBarShowStateObserver",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

.field public m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

.field public n:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

.field public o:Landroid/view/View;

.field public p:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

.field public r:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final s:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;-><init>()V

    new-instance v0, Lk31;

    invoke-direct {v0, p0}, Lk31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->s:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->W0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->Q0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->N0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;I)V

    return-void
.end method

.method public static synthetic D0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->e1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->S0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->U0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->Z0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic H0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    return-object p0
.end method

.method public static final synthetic I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    return-object p0
.end method

.method public static final synthetic J0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic K0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static final N0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->L0()V

    :cond_0
    return-void
.end method

.method public static final O0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->backToPage()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :cond_3
    return-void
.end method

.method public static final P0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-interface {p1, v2, v3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->updateBottomOperationBar()V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget v2, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public static final Q0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->showDeleteDialog()V

    return-void
.end method

.method public static final R0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->g0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->u0(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;IILjava/lang/Object;)V

    return-void
.end method

.method public static final S0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_f

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    invoke-interface {p1, p2, p3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->updateBottomOperationBar()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v2

    :goto_2
    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, v2

    :goto_3
    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_7

    sget p3, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/dbdata/beans/VideoCloudData;

    sget-object p3, Ls21;->b:Ls21$a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.dbdata.beans.VideoCloudData>"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ls21$a;->e(Ljava/util/List;)V

    const/16 p1, 0x3e9

    invoke-virtual {p0, p2, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->jumpToPlayForRecent(Lcom/transsion/dbdata/beans/VideoCloudData;I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_a

    const-string p0, "medialibrary"

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    const-string p0, "shared"

    goto :goto_5

    :cond_c
    :goto_4
    const-string p0, "own"

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_d
    const-wide/16 v3, 0x0

    :goto_6
    invoke-static {v3, v4, v1}, Lcz5;->b(JZ)F

    move-result p1

    sget-object p3, Laz5;->a:Laz5$a;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2, p1, p0}, Laz5$a;->u(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static final T0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->u0(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lb31;

    invoke-direct {v1, p0}, Lb31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static final U0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private final V0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lc31;

    invoke-direct {v2, p0}, Lc31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    new-instance p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$c;

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$c;-><init>(Le74;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final W0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/util/List;)Lzfb;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->G()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->R()I

    move-result v0

    if-ge p1, v0, :cond_c

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_a
    move-object p1, v0

    :goto_2
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_b
    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_c
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_d
    :goto_4
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :cond_e
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final X0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->u0(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;IILjava/lang/Object;)V

    return-void
.end method

.method public static final Y0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static final Z0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item_more:I

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->showMenuDialog(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->o0(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    :cond_1
    return-void
.end method

.method public static final a1(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 3

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final b1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->i0(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->u0(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;IILjava/lang/Object;)V

    return-void
.end method

.method public static final d1(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->s0(Ljava/util/List;)V

    return-void
.end method

.method public static final e1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    sget v0, Lcom/transsion/netdisk/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMCheckBoxAll(Landroid/widget/CheckBox;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ld31;

    invoke-direct {v1, p0}, Ld31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/transsion/netdisk/R$id;->top_menu_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->o:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget v0, Lcom/transsion/netdisk/R$id;->iv_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/netdisk/R$string;->os_clean:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_4

    new-instance v0, Le31;

    invoke-direct {v0, p0}, Le31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/transsion/cloud/adapter/CloudItemDecoration;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/transsion/cloud/adapter/CloudItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_9

    new-instance v0, Lmo1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmo1;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lmo1;->a(Ljava/lang/Boolean;)Lmo1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_a
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_b
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_d

    new-instance v1, Lf31;

    invoke-direct {v1, p0}, Lf31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v2, :cond_c

    iget-object v0, v2, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    :cond_c
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_e

    new-instance v0, Lg31;

    invoke-direct {v0, p0}, Lg31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_e
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_f

    new-instance v0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->setOnDragListener(Lcom/transsion/cloud/adapter/CloudDataAdapter$a;)V

    :cond_f
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->e:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_10

    new-instance v0, Lh31;

    invoke-direct {v0, p0}, Lh31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    :cond_10
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->h:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_11

    new-instance v0, Li31;

    invoke-direct {v0, p0}, Li31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method private final notifyVideoBarShowStateChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->getBottomPadding(Z)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private final stopEdit()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->backToPage()V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->d1(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->R0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->O0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->a1(Ljava/util/List;Lcom/transsion/dbdata/beans/VideoCloudData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->P0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->Y0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->T0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    return-void
.end method


# virtual methods
.method public final L0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result v2

    new-instance v3, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;

    invoke-direct {v3, p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g0(ZLandroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final M0()Lcom/transsion/cloud/viewmodel/RecentlyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->n:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mViewModelRecently"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final addVideoBarShowStateObserver()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->r:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->s:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->r:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final backToPage()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->editMode(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->g()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    sget v1, Lcom/transsion/netdisk/R$string;->visha_recent_view:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final c1(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->n:Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    array-length p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    aget-object p1, p2, v0

    instance-of p2, p1, Lcom/transsion/dbdata/beans/FileHandlerData;

    if-eqz p2, :cond_1

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerData"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/FileHandlerData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getData()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/FileHandlerData;->getHandleType()I

    move-result p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->backToPage()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->b1()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->backToPage()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->backToPage()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x469
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public editMode(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v2, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-interface {v0, v3, v4, v5}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->initBottomOperationBar()V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->updateViewWhenEditMode(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->y(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->updateBottomOperationBar()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(ZIZ)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public final getBottomPadding(Z)I
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->r:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v2

    const/16 v3, 0x73

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    if-nez p1, :cond_5

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v4, 0x3c

    :goto_4
    if-nez v2, :cond_6

    if-nez p1, :cond_6

    iget-boolean v5, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p0, :cond_7

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    return v3
.end method

.method public final initBottomOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->bottom_action_new_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setAnim(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lx21;

    invoke-direct {v1, p0}, Lx21;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->stopEdit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->c1(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;)V

    new-instance p1, Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-direct {p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->x(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Lj31;

    invoke-direct {v0, p0}, Lj31;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->l:Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onPause()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x469

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46a

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46b

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onResume()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x469

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46b

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->V0()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->X0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->addVideoBarShowStateObserver()V

    return-void
.end method

.method public refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V
    .locals 4

    const-string v0, "videoCloudData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCloudDataList"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    check-cast v1, Ljava/util/Collection;

    goto :goto_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_4

    :cond_1
    new-instance p1, Ly21;

    invoke-direct {p1, p3}, Ly21;-><init>(Ljava/util/List;)V

    invoke-static {v0, p1}, Ld81;->I(Ljava/util/List;Le74;)Z

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_4

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    move p3, v2

    :goto_3
    if-eq p3, v2, :cond_6

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/VideoCloudData;

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData"

    invoke-static {v2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    sget p0, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    :cond_2
    const/4 p2, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    const-string v0, "null cannot be cast to non-null type com.transsion.cloud.adapter.CloudDataAdapter"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-ne p4, p0, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->w(Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;ZIZILjava/lang/Object;)V

    return-void
.end method

.method public showDeleteDialog()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/netdisk/R$string;->visha_clear_all_view_records_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$string;->clear_empty:I

    new-instance v2, Lz21;

    invoke-direct {v2, p0}, Lz21;-><init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, La31;

    invoke-direct {v1}, La31;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final updateBottomOperationBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->q:Lcom/transsion/playercommon/widgets/NewAppFootActionBar;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->m:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->setAllEnable(Z)V

    nop

    :cond_2
    return-void
.end method

.method public updateViewWhenEditMode(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->updateViewWhenEditMode(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
