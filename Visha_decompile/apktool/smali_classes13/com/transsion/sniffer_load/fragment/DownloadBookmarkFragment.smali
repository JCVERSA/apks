.class public Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# instance fields
.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

.field public n:Z

.field public o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

.field public p:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public q:Z

.field public final r:Landroidx/lifecycle/Observer;

.field public s:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q:Z

    new-instance v0, Lgy2;

    invoke-direct {v0, p0}, Lgy2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->r:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private A0(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    or-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$5;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->p:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->r:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->p:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;ZLcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->x0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->y0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->u0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->w0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static bridge synthetic m0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->p0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    new-instance v1, Ldy2;

    invoke-direct {v1, p0}, Ldy2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    new-instance v1, Ley2;

    invoke-direct {v1, p0}, Ley2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    new-instance v1, Lfy2;

    invoke-direct {v1, p0}, Lfy2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    return-void
.end method

.method private synthetic t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 12

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-boolean p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->n:Z

    const/16 v0, 0x4da

    const-string v1, "dl_bm_cl"

    const-string v2, "web_url_from"

    const-string v3, "need_new_web"

    const-string v4, "web_url"

    const-class v5, Lcom/transsion/sniffer_load/WebActivity;

    const-wide/16 v6, 0x246c

    const-string v8, "dl_bm_add_cl"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p0, v11}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->B0(Z)V

    invoke-static {v9, v8, v6, v7}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v11, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->z0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p2, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v11, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->z0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p2, v0, p1}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-virtual {p0, v11}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, v10, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->C0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v11}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->B0(Z)V

    invoke-static {v9, v8, v6, v7}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private synthetic u0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->D0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method private synthetic v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    iget-boolean p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->n:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->B0(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->E0(Z)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic w0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {p0}, Lp06;->k(Z)V

    return-void
.end method


# virtual methods
.method public B0(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->C0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method public C0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 14

    move-object v6, p0

    move v7, p1

    invoke-static {p1}, Lp06;->m(Z)V

    iget-object v0, v6, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/sniffer_load/R$layout;->create_bookmark_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->et_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget v1, Lcom/transsion/sniffer_load/R$id;->et_url:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, v6, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_0

    sget v3, Lcom/transsion/sniffer_load/R$string;->download_edit_bookmark:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/sniffer_load/R$string;->download_add_bookmark:I

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->done:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->Save:I

    new-instance v2, Lhy2;

    invoke-direct {v2, p1}, Lhy2;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v11

    invoke-direct {p0, v10, v8}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->A0(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v7, :cond_1

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v12

    new-instance v13, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$b;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v9

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$b;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;ZLcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/widget/Button;)V

    invoke-virtual {v12, v13}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v9}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v12

    new-instance v13, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$c;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;ZLcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/widget/Button;)V

    invoke-virtual {v12, v13}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v12, Liy2;

    move-object v0, v12

    move v2, p1

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Liy2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;ZLcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public D0(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/sniffer_load/R$string;->download_bookmark_remove_hint:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->remove:I

    new-instance v2, Ljy2;

    invoke-direct {v2, p0, p1}, Ljy2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->s:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public E0(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->n:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;->d(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_1
    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewBottomPaddingPx(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q0(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->s:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByFragment(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    new-instance p1, Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q:Z

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->r0()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_bookmark:I

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_bookmark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m:Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->q0(Landroid/content/res/Configuration;)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->i()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

.method public final p0(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    sget v1, Lcom/transsion/sniffer_load/R$string;->add_to_playlist:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_create_new_bookmark:I

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-interface {p1, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final q0(Landroid/content/res/Configuration;)I
    .locals 0

    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public s0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->n:Z

    return p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public final synthetic x0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setName(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setUri(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p3, p2, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->p(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iget-object p4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p3, p2, p4}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->g(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-static {}, Lgp3;->b()Lgp3;

    move-result-object p3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p4

    new-instance p6, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;

    invoke-direct {p6, p0, p2}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$d;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    invoke-virtual {p3, p4, p6}, Lgp3;->a(Ljava/lang/String;Lgp3$b;)V

    :goto_0
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Lp06;->l(Z)V

    return-void
.end method

.method public final synthetic y0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->o:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;->id:J

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2, v0, v1, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->h(JLcom/transsion/playercommon/activities/BaseActivity;)V

    return-void
.end method

.method public z0(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "bookmark_name"

    const-string v2, "analysis_name"

    if-eqz p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bookmark_address"

    const-string v4, "analysis_address"

    if-eqz p1, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p1, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "TYPE"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "dl_analysis_cl"

    goto :goto_2

    :cond_5
    const-string p1, "dl_bm_cl"

    :goto_2
    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
