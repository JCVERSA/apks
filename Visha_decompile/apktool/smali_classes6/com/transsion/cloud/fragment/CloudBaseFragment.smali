.class public Lcom/transsion/cloud/fragment/CloudBaseFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J!\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00062\u0016\u0010!\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010 0\u001f\"\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008&\u0010\u0003J\u0015\u0010(\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u001a\u00a2\u0006\u0004\u0008(\u0010\u001dJ\u000f\u0010)\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008)\u0010\u0003J-\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00150+H\u0014\u00a2\u0006\u0004\u0008-\u0010.J\u001d\u00100\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0006\u00a2\u0006\u0004\u00080\u00101J\u001d\u00103\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0006\u00a2\u0006\u0004\u00083\u00101J\u001d\u00100\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u0002042\u0006\u0010/\u001a\u00020\u0006\u00a2\u0006\u0004\u00080\u00105J\u000f\u00106\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00088\u0010\u0003R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R$\u0010A\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010N\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010\u001dR\"\u0010S\u001a\u00020\u001a8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010O\u001a\u0004\u0008T\u0010Q\"\u0004\u0008U\u0010\u001dR$\u0010W\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u0014\u0010^\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\"\u0010`\u001a\u00020\u001a8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010O\u001a\u0004\u0008a\u0010Q\"\u0004\u0008b\u0010\u001dR%\u0010f\u001a\u0010\u0012\u000c\u0012\n e*\u0004\u0018\u00010d0d0c8\u0006\u00a2\u0006\u000c\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010i\u00a8\u0006j"
    }
    d2 = {
        "Lcom/transsion/cloud/fragment/CloudBaseFragment;",
        "Lcom/transsion/playercommon/fragments/PlayBaseFragment;",
        "<init>",
        "()V",
        "Lzfb;",
        "initViewModel",
        "",
        "offset",
        "scrollRange",
        "isAppBarLayoutExpand",
        "(II)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreatedEnd",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "onViewCreated",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "videoCloudData",
        "showMenuDialog",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;)V",
        "showDeleteDialog",
        "",
        "enter",
        "updateViewWhenEditMode",
        "(Z)V",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "doShare",
        "downloadFile",
        "showRenameDialog",
        "enable",
        "setButtonEnable",
        "deleteFile",
        "type",
        "",
        "videoCloudDataList",
        "refreshCloudListData",
        "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V",
        "listFlag1",
        "jumpToPlayerPage",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;I)V",
        "listFlag",
        "jumpToPlayForRecent",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;I)V",
        "getRecyclerBottomPadding",
        "()I",
        "onPause",
        "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
        "mViewModel",
        "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
        "getMViewModel",
        "()Lcom/transsion/cloud/viewmodel/CloudViewModel;",
        "setMViewModel",
        "(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V",
        "Lcom/transsion/widgetslib/dialog/InputDialog;",
        "mInputDialog",
        "Lcom/transsion/widgetslib/dialog/InputDialog;",
        "getMInputDialog",
        "()Lcom/transsion/widgetslib/dialog/InputDialog;",
        "setMInputDialog",
        "(Lcom/transsion/widgetslib/dialog/InputDialog;)V",
        "Lcom/transsion/widgetslib/dialog/d;",
        "mPromptDialog",
        "Lcom/transsion/widgetslib/dialog/d;",
        "getMPromptDialog",
        "()Lcom/transsion/widgetslib/dialog/d;",
        "setMPromptDialog",
        "(Lcom/transsion/widgetslib/dialog/d;)V",
        "mIsCloudContentShow",
        "Z",
        "getMIsCloudContentShow",
        "()Z",
        "setMIsCloudContentShow",
        "mIsGestureNavigationEnabled",
        "getMIsGestureNavigationEnabled",
        "setMIsGestureNavigationEnabled",
        "Landroid/widget/CheckBox;",
        "mCheckBoxAll",
        "Landroid/widget/CheckBox;",
        "getMCheckBoxAll",
        "()Landroid/widget/CheckBox;",
        "setMCheckBoxAll",
        "(Landroid/widget/CheckBox;)V",
        "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;",
        "listener",
        "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;",
        "mIsAppbarExpanded",
        "getMIsAppbarExpanded",
        "setMIsAppbarExpanded",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "mActivityResultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "getMActivityResultLauncher",
        "()Landroidx/activity/result/ActivityResultLauncher;",
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
.field private final listener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private final mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBoxAll:Landroid/widget/CheckBox;

.field private mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

.field private mIsAppbarExpanded:Z

.field private mIsCloudContentShow:Z

.field private mIsGestureNavigationEnabled:Z

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

.field public mViewModel:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Lty0;

    invoke-direct {v0, p0}, Lty0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->listener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Luy0;

    invoke-direct {v1, p0}, Luy0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getMContext$p$s-442714378(Lcom/transsion/cloud/fragment/CloudBaseFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->n0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->r0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->s0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->q0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final initViewModel()V
    .locals 0

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->m0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Z)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->p0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->o0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static final m0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->getInstance()Lcom/transsion/cloud/fileoperate/CloudFileOperate;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/cloud/fileoperate/CloudFileOperate;->startDownload(Landroid/content/Context;Lcom/transsion/dbdata/beans/VideoCloudData;)V

    :cond_0
    return-void
.end method

.method public static final n0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->isAppBarLayoutExpand(II)V

    return-void
.end method

.method public static final o0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "item_click_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->downloadFile()V

    goto :goto_0

    :cond_1
    sget-object p1, Laz5;->a:Laz5$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Laz5$a;->A(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->showDeleteDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->doShare()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p1}, Laz5$a;->C(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->showRenameDialog()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static final p0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Laz5;->a:Laz5$a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Laz5$a;->B(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->deleteFile()V

    return-void
.end method

.method public static final q0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static final r0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p2}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->h0(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/netdisk/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public static final s0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->p(Lcom/transsion/dbdata/beans/VideoCloudData;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x46d

    if-ne p1, v0, :cond_1

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public doShare()V
    .locals 5

    sget-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->e0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v3

    :cond_3
    invoke-virtual {v0, v1, v2, v4}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lbz5;->a:Lbz5$a;

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, p0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, p0, v1}, Lbz5$a;->b(Lbz5$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public downloadFile()V
    .locals 3

    new-instance v0, Le6b;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lqy0;

    invoke-direct {v2, p0}, Lqy0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    invoke-direct {v0, v1, v2}, Le6b;-><init>(Landroid/content/Context;Le6b$c;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Le6b;->b(Z)V

    return-void
.end method

.method public final getMActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public final getMCheckBoxAll()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mCheckBoxAll:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public final getMInputDialog()Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    return-object p0
.end method

.method public final getMIsAppbarExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsAppbarExpanded:Z

    return p0
.end method

.method public final getMIsCloudContentShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsCloudContentShow:Z

    return p0
.end method

.method public final getMIsGestureNavigationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsGestureNavigationEnabled:Z

    return p0
.end method

.method public final getMPromptDialog()Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public final getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mViewModel:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mViewModel"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecyclerBottomPadding()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsGestureNavigationEnabled:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppBarLayoutExpand(II)V
    .locals 0

    return-void
.end method

.method public final jumpToPlayForRecent(Lcom/transsion/dbdata/beans/VideoCloudData;I)V
    .locals 2

    const-string v0, "videoCloudData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->toPlayViewDataForMediaVideo(I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->jumpToPlayerPage(Lcom/transsion/dbdata/beans/VideoCloudData;I)V

    :goto_0
    return-void
.end method

.method public final jumpToPlayerPage(Lcom/transsion/dbdata/beans/VideoCloudData;I)V
    .locals 10

    const-string v0, "videoCloudData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v8, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;

    const/4 v7, 0x0

    move-object v2, v8

    move v4, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$1;-><init>(Ljava/lang/String;ILcom/transsion/dbdata/beans/VideoCloudData;Lcom/transsion/cloud/fragment/CloudBaseFragment;Lwh1;)V

    const/4 p0, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, v1

    move-object v7, v8

    move v8, p0

    invoke-static/range {v4 .. v9}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le07;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->toPlayVideoData()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    .line 6
    iput p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    .line 7
    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    .line 8
    sget-object p1, Lsrb;->a:Lsrb;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/netdisk/R$string;->visha_playing_cloud_file:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lsrb;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final jumpToPlayerPage(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;I)V
    .locals 10

    const-string v0, "videoCloudData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v8, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$2;

    const/4 v7, 0x0

    move-object v2, v8

    move v4, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud/fragment/CloudBaseFragment$jumpToPlayerPage$2;-><init>(Ljava/lang/String;ILcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/fragment/CloudBaseFragment;Lwh1;)V

    const/4 p0, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, v1

    move-object v7, v8

    move v8, p0

    invoke-static/range {v4 .. v9}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object p0, Lm21;->a:Lm21;

    invoke-virtual {p0}, Lm21;->d()V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->toPlayVideoData(I)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    .line 15
    sget-object p1, Lsrb;->a:Lsrb;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/netdisk/R$string;->visha_playing_cloud_file:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lsrb;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lpp3;->H:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/a;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsGestureNavigationEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsGestureNavigationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudBaseFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setMViewModel(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46d

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x46d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->initViewModel()V

    return-void
.end method

.method public onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->listener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public refreshCloudListData(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V
    .locals 0

    const-string p0, "videoCloudData"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "videoCloudDataList"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setButtonEnable(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setMCheckBoxAll(Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mCheckBoxAll:Landroid/widget/CheckBox;

    return-void
.end method

.method public final setMInputDialog(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    return-void
.end method

.method public final setMIsAppbarExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsAppbarExpanded:Z

    return-void
.end method

.method public final setMIsCloudContentShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsCloudContentShow:Z

    return-void
.end method

.method public final setMIsGestureNavigationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mIsGestureNavigationEnabled:Z

    return-void
.end method

.method public final setMPromptDialog(Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public final setMViewModel(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mViewModel:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    return-void
.end method

.method public showDeleteDialog()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/netdisk/R$string;->visha_delete_cloud_file_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$string;->delete:I

    new-instance v2, Lvy0;

    invoke-direct {v2, p0}, Lvy0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, Lwy0;

    invoke-direct {v1}, Lwy0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final showMenuDialog(Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 3

    const-string v0, "videoCloudData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string p1, "is_kt_cloud_main"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "from_list_more_icon"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public showRenameDialog()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMViewModel()Lcom/transsion/cloud/viewmodel/CloudViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->T()Lcom/transsion/dbdata/beans/VideoCloudData;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Lj1a;->Z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x2

    invoke-static {v0, v1, v3, v5, v3}, Lj1a;->g1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/transsion/netdisk/R$string;->rename:I

    invoke-virtual {v1, v5}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    sget v5, Lcom/transsion/netdisk/R$string;->Save:I

    new-instance v6, Lry0;

    invoke-direct {v6, p0, v4}, Lry0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    sget v4, Lcom/transsion/netdisk/R$string;->cancel:I

    new-instance v5, Lsy0;

    invoke-direct {v5, p0}, Lsy0;-><init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    invoke-virtual {v1, v4, v5}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    const/16 v6, 0x3d

    invoke-virtual {v1, v5, v2, v6, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/transsion/cloud/fragment/CloudBaseFragment$a;

    invoke-direct {v2, v0, p0}, Lcom/transsion/cloud/fragment/CloudBaseFragment$a;-><init>(Ljava/lang/String;Lcom/transsion/cloud/fragment/CloudBaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v3, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_6
    iget-object v0, p0, Lcom/transsion/cloud/fragment/CloudBaseFragment;->mInputDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    :cond_7
    invoke-virtual {p0, v4}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setButtonEnable(Z)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CloudFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method

.method public updateViewWhenEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return-void
.end method
