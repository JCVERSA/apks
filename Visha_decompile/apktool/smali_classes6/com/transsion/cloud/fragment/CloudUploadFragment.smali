.class public final Lcom/transsion/cloud/fragment/CloudUploadFragment;
.super Lcom/transsion/cloud/fragment/CloudBaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J3\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J-\u0010!\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008$\u0010\u0015J/\u0010)\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u000b2\u0016\u0010(\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\'0&\"\u0004\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J!\u0010+\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0003J\u000f\u0010.\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\'\u00104\u001a\u00020\u00042\u000e\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u0001002\u0006\u00103\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00084\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010>R\u0018\u0010F\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010AR\u0018\u0010J\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u001a\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\r0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010Q\u00a8\u0006S"
    }
    d2 = {
        "Lcom/transsion/cloud/fragment/CloudUploadFragment;",
        "Lcom/transsion/cloud/fragment/CloudBaseFragment;",
        "<init>",
        "()V",
        "Lzfb;",
        "D0",
        "C0",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "adapter",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "",
        "child",
        "selectItem",
        "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V",
        "initViewModel",
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
        "onResume",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "preload",
        "loadData",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onPause",
        "onBackPressed",
        "()Z",
        "",
        "Lcom/transsion/dbdata/beans/VideoCloudDataLocal;",
        "videoCloudDataList",
        "isUpload",
        "markCloudTransmitList",
        "(Ljava/util/List;Z)V",
        "l",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "mCloudDataAdapter",
        "Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;",
        "m",
        "Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;",
        "mBinding",
        "n",
        "Landroid/view/ViewGroup;",
        "mMenuLayout",
        "o",
        "Landroid/view/View;",
        "mIvSearch",
        "p",
        "mTranslateLayout",
        "q",
        "mEmptyView",
        "Lcom/transsion/playercommon/widgets/CloudUploadView;",
        "r",
        "Lcom/transsion/playercommon/widgets/CloudUploadView;",
        "mCloudUploadView",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "s",
        "Lcom/transsion/playercommon/videomodel/MainViewModel;",
        "mMainViewModel",
        "Landroidx/lifecycle/Observer;",
        "t",
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
.field public l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

.field public m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

.field public n:Landroid/view/ViewGroup;

.field public o:Landroid/view/View;

.field public p:Landroid/view/ViewGroup;

.field public q:Landroid/view/View;

.field public r:Lcom/transsion/playercommon/widgets/CloudUploadView;

.field public s:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final t:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;-><init>()V

    new-instance v0, Lc41;

    invoke-direct {v0, p0}, Lc41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->t:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic A0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->L0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->F0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V

    return-void
.end method

.method private final C0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->q:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/netdisk/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->q:Landroid/view/View;

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->q:Landroid/view/View;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final D0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/cloud/adapter/CloudItemDecoration;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/transsion/cloud/adapter/CloudItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v2, Lcom/transsion/netdisk/R$id;->title_bar_checkBox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMCheckBoxAll(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v2, Lcom/transsion/netdisk/R$id;->top_menu_ll:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->n:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v2, Lcom/transsion/netdisk/R$id;->iv_search:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v2, Lcom/transsion/netdisk/R$id;->translate_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->p:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->n:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->o:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->p:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v0, :cond_a

    new-instance v3, Ld41;

    invoke-direct {v3, p0}, Ld41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v3, Le41;

    invoke-direct {v3, p0}, Le41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->g:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_c

    new-instance v3, Lf41;

    invoke-direct {v3, p0}, Lf41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    sget v1, Lcom/transsion/netdisk/R$id;->upload_bottom_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/widgets/CloudUploadView;

    :cond_d
    iput-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getBtnUploadView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getBtnUploadView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lg41;

    invoke-direct {v1, p0}, Lg41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getRecyclerBottomPadding()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v1, :cond_13

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_4

    :cond_10
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    goto :goto_5

    :cond_11
    move v4, v2

    :goto_5
    iget-object v5, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    :cond_12
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v1, v3, v4, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_13
    return-void
.end method

.method public static final E0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_6

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/VideoCloudData;

    instance-of v0, p3, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/transsion/playercommon/widgets/CloudUploadView;->updateCount(I)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->setVideoDataList(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, p3

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_5
    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_6
    return-void
.end method

.method public static final F0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u(Z)V

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/VideoCloudData;

    instance-of v3, v2, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/widgets/CloudUploadView;->updateCount(I)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->setVideoDataList(Ljava/util/ArrayList;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result p0

    goto :goto_3

    :cond_7
    move p0, v0

    :goto_3
    invoke-interface {p1, v1, p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_8
    return-void
.end method

.method public static final G0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0x3ea

    invoke-interface {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->c(ZI)V

    :cond_0
    return-void
.end method

.method public static final H0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "batch_select"

    invoke-static {p1}, Lcz5;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getVideoDataList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->markCloudTransmitList(Ljava/util/List;Z)V

    new-instance p1, Le6b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lj41;

    invoke-direct {v2, p0}, Lj41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    invoke-direct {p1, v1, v2}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    invoke-virtual {p1, v0}, Le6b;->b(Z)V

    return-void
.end method

.method public static final I0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getVideoDataList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startBatchUploadByVideoCloudDataList(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :cond_0
    return-void
.end method

.method public static final J0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/util/List;)Lzfb;
    .locals 14

    const-string v0, "CloudUploadFragment"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->C0()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->q:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "it "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_4
    move v2, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_e

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/VideoCloudData;

    instance-of v6, v5, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->g()V

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/VideoCloudData;

    instance-of v7, v6, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object v7, v6

    check-cast v7, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v7, :cond_9

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v8, v6

    invoke-static/range {v7 .. v13}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->w(Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;ZIZILjava/lang/Object;)V

    :cond_9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_b
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p1, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/widgets/CloudUploadView;->updateCount(I)V

    :cond_c
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3}, Lcom/transsion/playercommon/widgets/CloudUploadView;->setVideoDataList(Ljava/util/ArrayList;)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->r:Lcom/transsion/playercommon/widgets/CloudUploadView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/CloudUploadView;->getBtnUploadView()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_10

    const/16 v2, 0x3ea

    invoke-interface {p1, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->c(ZI)V

    :cond_10
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_13

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result v3

    goto :goto_7

    :cond_12
    move v3, v4

    :goto_7
    invoke-interface {p1, v2, v3, v4}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_13
    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_9
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final K0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Long;)Lzfb;
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v2

    :cond_2
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/transsion/netdisk/R$string;->visha_cloud_space_insufficient:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget-object v1, Lhz9;->a:Lhz9;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/netdisk/R$string;->visha_file_size_remaining_space:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v6, "getString(...)"

    invoke-static {p0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lxkb;->a:Lxkb;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lxkb;->a(J)Ljava/lang/String;

    move-result-object p1

    sub-long/2addr v4, v2

    invoke-virtual {v6, v4, v5}, Lxkb;->a(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/netdisk/R$string;->got_it:I

    new-instance v0, Lk41;

    invoke-direct {v0}, Lk41;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final L0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static final M0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method private final addVideoBarShowStateObserver()V
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

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->s:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->t:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->s:Lcom/transsion/playercommon/videomodel/MainViewModel;

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
    invoke-direct {p0, v0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final getBottomPadding(Z)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->s:Lcom/transsion/playercommon/videomodel/MainViewModel;

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

    move-result p0

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    const/16 p0, 0x1e

    goto :goto_3

    :cond_4
    const/16 p0, 0x3c

    :goto_3
    return p0
.end method

.method private final initViewModel()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lh41;

    invoke-direct {v2, p0}, Lh41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    new-instance v3, Lcom/transsion/cloud/fragment/CloudUploadFragment$a;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/fragment/CloudUploadFragment$a;-><init>(Le74;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Li41;

    invoke-direct {v2, p0}, Li41;-><init>(Lcom/transsion/cloud/fragment/CloudUploadFragment;)V

    new-instance p0, Lcom/transsion/cloud/fragment/CloudUploadFragment$a;

    invoke-direct {p0, v2}, Lcom/transsion/cloud/fragment/CloudUploadFragment$a;-><init>(Le74;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final notifyVideoBarShowStateChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->getBottomPadding(Z)I

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

.method private final selectItem(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V
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

.method public static synthetic t0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->J0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->G0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->M0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->E0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->H0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->I0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Z)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Long;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->K0(Lcom/transsion/cloud/fragment/CloudUploadFragment;Ljava/lang/Long;)Lzfb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x469

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :cond_0
    return-void
.end method

.method public loadData(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->z(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->t()V

    return-void
.end method

.method public final markCloudTransmitList(Ljava/util/List;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p0}, Lcom/transsion/cloud/fragment/CloudUploadFragment$markCloudTransmitList$1;-><init>(Ljava/util/List;ZLwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3ea

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->c(ZI)V

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-direct {p1}, Lcom/transsion/cloud/adapter/CloudDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->l:Lcom/transsion/cloud/adapter/CloudDataAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/netdisk/R$color;->os_altitude_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudUploadFragment;->m:Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/netdisk/databinding/LayoutCloudUploadViewBinding;->b()Landroid/widget/RelativeLayout;

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

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onResume()V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->I()Lsq3$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsq3;->b(Lsq3$a;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x469

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    const-string v0, "cloud_upload_select_show"

    invoke-static {v0}, Lcz5;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->loadData(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->D0()V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->initViewModel()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->loadData(Z)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudUploadFragment;->addVideoBarShowStateObserver()V

    return-void
.end method
