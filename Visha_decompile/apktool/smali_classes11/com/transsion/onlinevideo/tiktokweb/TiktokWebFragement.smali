.class public Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;
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

.field public F:Z

.field public G:Z

.field public l:Lcom/transsion/onlinevideo/tiktokweb/b;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/ViewGroup;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/SeekBar;

.field public s:Z

.field public t:I

.field public u:Ljava/lang/String;

.field public v:J

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->u:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->y:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->z:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->C:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->D:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->E:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->F:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    return-void
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->a0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic R(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->s:Z

    return p0
.end method

.method public static bridge synthetic S(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->f0(I)V

    return-void
.end method

.method private V()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-nez v0, :cond_0

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->B:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->C:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->D:Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->E:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->D:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->E:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private W()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "web_url"

    invoke-static {}, Lcja;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcja;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private X()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->p:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$id;->no_network_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->p:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->q:Landroid/widget/TextView;

    new-instance v1, Lena;

    invoke-direct {v1, p0}, Lena;-><init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->s:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return-void
.end method

.method private c0(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->E:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private f0(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->s:Z

    const/16 v1, 0x8

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->X()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->p:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->p:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->r:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->r:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->p:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->r:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->r:Landroid/widget/SeekBar;

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

.method public T(Z)V
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
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->A:Landroid/view/ViewGroup;

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
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/tiktokweb/b;->o:Lcom/transsion/onlinevideo/tiktokweb/b$a;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/tiktokweb/b$a;->a(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktokweb/b;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    return-void
.end method

.method public final Y()Z
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

.method public final synthetic a0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->e0()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageToVideoPauseOrResume isVisibleResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBeforeVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_TiktokWebFragement"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->y:Z

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.tiktok.com/feedcoop/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->e0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->d0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->d0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->y:Z

    return-void
.end method

.method public final d0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/onlinevideo/tiktokweb/b;->A(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->i()V

    :cond_0
    return-void
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktokweb/b;->A(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->j()V

    :cond_0
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

    const-string p3, "visha_TiktokWebFragement"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->u:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->m:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public markPointPageShow()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointPageShow()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->b0(Z)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->V()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markPointPageShow mIsBottomPlayBarShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBottomBarMusicPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBottomBarVideoPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_TiktokWebFragement"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->C:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->c0(Z)V

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->x:Ljava/lang/String;

    invoke-static {v0, p0}, Lc06;->r(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/b;->f()V

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

    iput v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->t:I

    const-string v0, "channelid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    const-string v0, "channelname"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->n:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy isNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_TiktokWebFragement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

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
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktokweb/b;->h()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    :cond_3
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->fragment_tiktok_web:I

    return p0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageFinished : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mIsFirstTTShow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->F:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokWebFragement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->f0(I)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->s:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->F:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "https://www.tiktok.com/feedcoop/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onPageFinished match target url, pause webview"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->d0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->G:Z

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->F:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->b0(Z)V

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

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->A:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/onlinevideo/R$id;->shimmer_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->m:Landroid/view/View;

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
    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->A:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->t:I

    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->o:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/onlinevideo/R$id;->sb_web:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->r:Landroid/widget/SeekBar;

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->f0(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->W()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_TiktokWebFragement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->U(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/tiktokweb/a;->k(Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/transsion/onlinevideo/tiktokweb/b;->v(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->l:Lcom/transsion/onlinevideo/tiktokweb/b;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/tiktokweb/a;->e()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lfna;

    invoke-direct {p2, p0}, Lfna;-><init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    new-instance p1, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;

    invoke-direct {p1, p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;-><init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)V

    invoke-static {v0, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    return-void
.end method

.method public setParentVisible(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->z:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->x:Ljava/lang/String;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v2, v3, v0}, Lc06;->s(ILjava/lang/String;I)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->z:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->T(Z)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->b0(Z)V

    :cond_3
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->z:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->w:I

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->x:Ljava/lang/String;

    iget-wide v4, p0, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->v:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v2, v3, v0}, Lc06;->s(ILjava/lang/String;I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->b0(Z)V

    :cond_2
    return-void
.end method
