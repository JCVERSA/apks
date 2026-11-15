.class public Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# instance fields
.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

.field public n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public r:I

.field public s:Lcom/transsion/utils/CustomGridLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->q0(Z)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->x0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->w0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->s0(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->u0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->t0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private o0(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->main_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->lottie_no_videos_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->text_no_videos:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->add_video_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/transsion/sniffer_load/R$string;->link_wa:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lhlc;

    invoke-direct {v2, p0}, Lhlc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->p:Landroid/widget/TextView;

    sget v2, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o:Landroid/view/View;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private synthetic t0(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->t(Z)V

    return-void
.end method

.method public static y0(I)Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;-><init>()V

    iput p0, v0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    return-object v0
.end method


# virtual methods
.method public final A0(Ljava/util/List;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.magicmovie.preview_img_video"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lv19;->e(Ljava/util/List;)V

    invoke-static {p2}, Lv19;->d(I)V

    const/16 v1, 0x3ea

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "dl_wa_content_preview_cl"

    const-string p2, "type"

    invoke-static {p1, p2, p0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x49b

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x49b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_whatsapp:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, v1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->s:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p1, v1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->s:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->ll_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->q:Landroid/view/View;

    new-instance p1, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object p2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    :goto_2
    invoke-direct {v0, v1, p1}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->s:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance p2, Lzkc;

    invoke-direct {p2, p0}, Lzkc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    iget v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->U(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v0, Lalc;

    invoke-direct {v0, p0}, Lalc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->Y(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance p2, Lblc;

    invoke-direct {p2, p0}, Lblc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->X(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    new-instance v0, Lclc;

    invoke-direct {v0, p0}, Lclc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->W(Landroidx/lifecycle/LifecycleOwner;ILandroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    new-instance p2, Ldlc;

    invoke-direct {p2, p0}, Ldlc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    new-instance p2, Lelc;

    invoke-direct {p2, p0}, Lelc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    new-instance p2, Lflc;

    invoke-direct {p2, p0}, Lflc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    return-void
.end method

.method public final synthetic p0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dl_wa_connect_cl"

    const-string v1, "from"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lraa;->l(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->whats_app_not_installed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public final synthetic q0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic r0(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->o0(Z)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->q:Landroid/view/View;

    new-instance v2, Lglc;

    invoke-direct {v2, p0, v0}, Lglc;-><init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Z)V

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/sniffer_load/adapter/diffCallback/WhatsAppDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewDiffData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public final synthetic s0(Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V
    .locals 1

    iget-boolean v0, p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->w(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;->a:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic u0(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final synthetic v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->z0(I)V

    return-void
.end method

.method public final synthetic w0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb_select:I

    if-ne p1, v0, :cond_1

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iput-boolean p1, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    iget-boolean p1, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->b(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->l(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a0(I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_download:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->setStatus(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    invoke-virtual {p2, v0, p1, p0, p3}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->c0(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;II)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isVideo()Z

    move-result p0

    const-string p1, "dl_wa_content_dl_cl"

    const-string p2, "type"

    invoke-static {p1, p2, p0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/sniffer_load/R$id;->ifl_root:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->F()Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    iget-boolean p1, p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->b(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->l(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->j()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->a0(I)V

    :cond_4
    invoke-virtual {p0, p3}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->z0(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final synthetic x0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->F()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2, p1}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->v(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    iput-boolean v0, p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f0(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->B(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p3}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSaved()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->f0(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->B(II)V

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public final z0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->m:Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/WhatsappAdapter;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->r:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->w()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->A()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->n:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->z()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->A0(Ljava/util/List;I)V

    return-void
.end method
