.class public Lcom/transsion/playercommon/gallery/ImageFolderFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/playercommon/gallery/ImageViewModel;

.field public m:Ljava/util/List;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public o:Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

.field public p:Landroid/view/View;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->m:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->q:I

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->q:I

    return p0
.end method

.method public static bridge synthetic Q(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->m:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/gallery/ImageFolderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->o:Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic T(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private U()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

    invoke-direct {v0}, Lcom/transsion/playercommon/gallery/ImageFolderAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->o:Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->o:Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

    new-instance v1, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment$a;-><init>(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public static V(I)Lcom/transsion/playercommon/gallery/ImageFolderFragment;
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-direct {v0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "crop_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$id;->rv_folders:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private initViewModel()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/gallery/ImageViewModel;

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->l:Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;-><init>(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->l:Lcom/transsion/playercommon/gallery/ImageViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->l(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "crop_type"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->q:I

    :cond_0
    sget p3, Lcom/transsion/playercommon/R$layout;->fragment_image_folder:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->p:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->l:Lcom/transsion/playercommon/gallery/ImageViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->l(Landroid/content/Context;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->U()V

    return-void
.end method
