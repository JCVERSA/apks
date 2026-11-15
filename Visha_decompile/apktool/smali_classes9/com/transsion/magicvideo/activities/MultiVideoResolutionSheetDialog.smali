.class public Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->j0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->k0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Landroid/widget/Button;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->m0(Landroid/widget/Button;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->l0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Landroid/widget/Button;I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static p0(Landroid/content/Context;[I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "endPosition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "endPosition"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->N:[I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->dialog_for_sniff_multi_resolution_download:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->o0(Landroid/view/View;)V

    return-void
.end method

.method public final synthetic j0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->n0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method public final synthetic k0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->n0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method public final synthetic l0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->j()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v1

    invoke-virtual {v1}, Lnr9;->c()Lnr9$a;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    sput-boolean v1, Lym1;->b:Z

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getmTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v2 .. v8}, Lnr9$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v2

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v3

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->N:[I

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    new-instance v2, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog$a;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog$a;-><init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;)V

    invoke-virtual {p0, p0, p3, v2}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->r0(Landroid/content/Context;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    :cond_1
    :goto_0
    sput-boolean v0, Lym1;->b:Z

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getImgUrl()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lp06;->Y(ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final n0(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    sget v0, Lcom/transsion/magicvideo/R$id;->cb_choice:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->k(Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;ZI)V

    return-void
.end method

.method public final o0(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v0

    invoke-virtual {v0}, Lnr9;->a()Lcom/transsion/magicvideo/data/DownloadMediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MultiVideoResolutionSheetDialog"

    const-string p1, "no downloadMediaItem"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput v1, Le16;->e:I

    new-instance v1, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    invoke-direct {v1}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;-><init>()V

    sget v3, Lcom/transsion/magicvideo/R$id;->rv_choice_list:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v3, Lss6;

    invoke-direct {v3, p0, v1}, Lss6;-><init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    new-instance v3, Lts6;

    invoke-direct {v3, p0, v1}, Lts6;-><init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    sget v3, Lcom/transsion/magicvideo/R$id;->dialog_download:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lus6;

    invoke-direct {v4, p0, v1, v0}, Lus6;-><init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lvs6;

    invoke-direct {v4, v3}, Lvs6;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v1, v4}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->setOnSelectListener(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;)V

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v1, v3, v2, v4}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->k(Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;ZI)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_media_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$id;->tv_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final q0(Landroid/content/Context;[I[ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    new-instance v1, Lcom/transsion/widgets/BadgeView;

    invoke-direct {v1, p1}, Lcom/transsion/widgets/BadgeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    aget v2, p2, p1

    sub-int/2addr v2, p0

    aput v2, p2, p1

    aget v2, p3, p1

    sub-int/2addr v2, p0

    aput v2, p3, p1

    const/4 v4, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lym1;->b(Landroid/view/ViewGroup;Landroid/view/View;[I[IZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final r0(Landroid/content/Context;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_media_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p2, v1, v3

    div-int/2addr v4, v0

    add-int/2addr p2, v4

    aput p2, v1, v3

    aget p2, v1, v2

    div-int/2addr v5, v0

    add-int/2addr p2, v5

    aput p2, v1, v2

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->N:[I

    aget v0, p2, v3

    aget p2, p2, v2

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->q0(Landroid/content/Context;[I[ILandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
