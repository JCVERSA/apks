.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Landroid/net/Uri;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

.field public q:Landroid/widget/FrameLayout;

.field public r:Lcom/transsion/playercommon/player/b;

.field public s:Landroid/view/SurfaceHolder;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/TextView;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Landroid/widget/Button;

.field public y:Lcom/transsion/playercommon/player/b$a;

.field public z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$d;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->y:Lcom/transsion/playercommon/player/b$a;

    new-instance v0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->c0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->d0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic R(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->t:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic W(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->s:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static bridge synthetic X(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->l:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic Y(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->s:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private a0()V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$a;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->o:Landroid/widget/ImageView;

    new-instance v1, Lirb;

    invoke-direct {v1, p0}, Lirb;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$b;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->q:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;

    invoke-direct {v2, p0, v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static e0(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v2, "uri_str"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "display_name"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "resource to share"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initTitle()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->n:Landroid/widget/ImageView;

    new-instance v1, Lhrb;

    invoke-direct {v1, p0}, Lhrb;-><init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final b0()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/player/c;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/playercommon/player/c;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->y:Lcom/transsion/playercommon/player/b$a;

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/player/b;->n(Lcom/transsion/playercommon/player/b$a;)Lcom/transsion/playercommon/player/b;

    return-void
.end method

.method public final synthetic c0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/player/b;->d(Z)V

    return-void
.end method

.method public f0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v2, Lcom/transsion/magicvideo/R$color;->black:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget v2, Lcom/transsion/magicvideo/R$color;->transparent:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$color;->black:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2011

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->u:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uri_str"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->l:Landroid/net/Uri;

    const-string v0, "display_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->v:Ljava/lang/String;

    const-string v0, "resource to share"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->w:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->video_editor_share_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->u(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/player/b;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljb8;

    iget-object v2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->l:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljb8;-><init>(Landroid/net/Uri;JZZZ)V

    iget-object v1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/player/b;->R(Ljb8;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->u:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->r:Lcom/transsion/playercommon/player/b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/player/b;->pause(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_video_play_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->m:Landroid/widget/TextView;

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_video_play_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->n:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/magicvideo/R$id;->iv_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->o:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/magicvideo/R$id;->player_media_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->z:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;

    invoke-virtual {p2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setSurfaceListener(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->black_cover:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->t:Landroid/view/View;

    sget p2, Lcom/transsion/magicvideo/R$id;->tv_save:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->u:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$string;->tablet_save_video:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    sget p2, Lcom/transsion/magicvideo/R$id;->player_frame_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->q:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/magicvideo/R$id;->btn_share_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->x:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->b0()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->a0()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->initTitle()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->w:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->w:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "mv_export_results_page_show"

    const-wide v0, 0xd91af2736eL

    invoke-static {p2, p1, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->f0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    move-result-object p0

    return-object p0
.end method
