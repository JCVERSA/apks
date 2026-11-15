.class public Lcom/transsion/onlinevideo/h5/H5WebFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public l:Lal4;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/ViewGroup;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/SeekBar;

.field public s:Z

.field public t:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

.field public u:I

.field public v:Ljava/lang/String;

.field public w:J

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->v:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->z:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->C:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->D:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->E:Z

    iput v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->F:I

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->G:Z

    return-void
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/h5/H5WebFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->b0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/h5/H5WebFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->c0()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/h5/H5WebFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->lambda$onViewCreated$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic S(Lcom/transsion/onlinevideo/h5/H5WebFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->s:Z

    return p0
.end method

.method public static bridge synthetic T(Lcom/transsion/onlinevideo/h5/H5WebFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->j0(I)V

    return-void
.end method

.method private X()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "web_url"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->p:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$id;->no_network_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->p:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->q:Landroid/widget/TextView;

    new-instance v1, Ltk4;

    invoke-direct {v1, p0}, Ltk4;-><init>(Lcom/transsion/onlinevideo/h5/H5WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private j0(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->s:Z

    const/16 v1, 0x8

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->Y()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->p:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->p:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->r:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->r:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->p:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->r:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->r:Landroid/widget/SeekBar;

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public U(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lal4;->g(Ljava/lang/String;)Lal4;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    return-void
.end method

.method public final W()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-nez v0, :cond_0

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->C:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->D:Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->E:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->D:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->E:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final Z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final a0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic b0(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->s:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lal4;->j()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {p0}, Lal4;->j()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return-void
.end method

.method public final synthetic c0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed: mIsParentVisibleToUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsClickTabSelf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_H5WebFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {v0}, Lal4;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->G:Z

    return-void
.end method

.method public final d0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->z:Z

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {v0}, Lal4;->j()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {v0}, Lal4;->r()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {v0}, Lal4;->q()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->z:Z

    return-void
.end method

.method public final e0(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->E:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f0(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->t:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    return-void
.end method

.method public g(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "visha_H5WebFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->m:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->t:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;->a(Z)V

    :cond_0
    return-void
.end method

.method public final h0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "visha_H5WebFragment"

    const-string v1, "trackH5ChannelShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc06;->b(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    :cond_2
    :goto_0
    return-void
.end method

.method public final i0()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput-wide v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->w:J

    if-lez v0, :cond_1

    iget v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->X()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, v0, p0}, Lc06;->c(ILjava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic lambda$onViewCreated$0(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->F:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->G:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated: mainTabIndexLiveData tabIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTabPreIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_H5WebFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->F:I

    return-void
.end method

.method public markPointPageShow()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointPageShow()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->h0()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->d0(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->W()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markPointPageShow mIsBottomPlayBarShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBottomBarMusicPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBottomBarVideoPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_H5WebFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->e0(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lal4;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lsk4;

    invoke-direct {v1, p0}, Lsk4;-><init>(Lcom/transsion/onlinevideo/h5/H5WebFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "header_margin"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->u:I

    const-string v0, "channelid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->x:I

    const-string v0, "channelname"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->n:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy isNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_H5WebFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lal4;->j()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy onError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {v0}, Lal4;->p()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    :cond_3
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->fragment_h5_web:I

    return p0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageFinished : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "visha_H5WebFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->j0(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->i0()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->d0(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->fl_content_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/onlinevideo/R$id;->root_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->A:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/onlinevideo/R$id;->shimmer_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->A:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->u:I

    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->o:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/onlinevideo/R$id;->sb_web:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->r:Landroid/widget/SeekBar;

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->j0(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->X()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->v:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_H5WebFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->v:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->V(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    invoke-virtual {p1, p0}, Lal4;->t(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2, v3, p2, v1, p1}, Lal4;->f(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/transsion/onlinevideo/h5/H5WebFragment$a;

    invoke-direct {p1, p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment$a;-><init>(Lcom/transsion/onlinevideo/h5/H5WebFragment;)V

    invoke-static {v0, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-nez p1, :cond_2

    const-class p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Luk4;

    invoke-direct {p2, p0}, Luk4;-><init>(Lcom/transsion/onlinevideo/h5/H5WebFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public peekConsumeBack()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/h5/H5WebFragment;->l:Lal4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lal4;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setParentVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->h0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->i0()V

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->U(Z)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->d0(Z)V

    :cond_2
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->h0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->i0()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/h5/H5WebFragment;->d0(Z)V

    :goto_0
    return-void
.end method
