.class public Lcom/transsion/sniffer_load/DownloadTipActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:I

.field public O:I

.field public P:Landroid/graphics/Rect;

.field public Q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->P:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic f0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->q0(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->s0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/sniffer_load/DownloadTipActivity;->r0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->u0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic m0(Lcom/transsion/sniffer_load/DownloadTipActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->O:I

    return p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/widget/EditText;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->o0(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method private o0(Landroid/widget/EditText;)Z
    .locals 1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static synthetic q0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method private synthetic u0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "dl_brower_rp_c_adl_guide_ok_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "dl_brower_rp_c_adl_guide_close_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static x0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/DownloadTipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->Q:Ljava/lang/String;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->N:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->dialog_for_disabled_download_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lu13;

    invoke-direct {v2, p0}, Lu13;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/sniffer_load/R$id;->close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lv13;

    invoke-direct {v2, p0}, Lv13;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/sniffer_load/R$id;->sniffer_download_lottie:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_sniff_download_guide_image_tablet:I

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->N:I

    invoke-static {v1, v2}, Lgu5;->j(Lcom/airbnb/lottie/LottieAnimationView;I)V

    :goto_0
    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lw13;

    invoke-direct {v2, p0}, Lw13;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->O:I

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onStop()V

    invoke-static {p0}, Lag5;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public final p0()Landroid/view/View;
    .locals 16

    move-object/from16 v7, p0

    invoke-static/range {p0 .. p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$layout;->dialog_download_feedback_foldlarge:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$layout;->dialog_download_feedback:I

    :goto_0
    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/transsion/sniffer_load/R$id;->scrollView:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    new-instance v9, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;

    invoke-direct {v9}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;-><init>()V

    sget v1, Lcom/transsion/sniffer_load/R$id;->oset_content:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v10}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$color;->os_text_primary_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$color;->os_text_quaternary_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {v10}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$string;->download_feedback_hint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v1, Lx13;

    invoke-direct {v1}, Lx13;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v10, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v10}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/DownloadTipActivity$a;

    invoke-direct {v2, v7, v10, v0}, Lcom/transsion/sniffer_load/DownloadTipActivity$a;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckedTextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb2:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/CheckedTextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb3:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/transsion/sniffer_load/DownloadTipActivity$b;

    invoke-direct {v0, v7, v10}, Lcom/transsion/sniffer_load/DownloadTipActivity$b;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->btn_done:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setEnabled(Z)V

    new-instance v6, Ly13;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v9

    move-object v4, v14

    move-object v5, v11

    move-object v15, v6

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Ly13;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadTipActivity$3;

    invoke-direct {v0, v7, v14}, Lcom/transsion/sniffer_load/DownloadTipActivity$3;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/widget/Button;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v9, v11}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b(Landroid/widget/CheckedTextView;)V

    invoke-virtual {v9, v13}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->a(Landroid/widget/CheckedTextView;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadTipActivity$c;

    invoke-direct {v0, v7, v10, v14}, Lcom/transsion/sniffer_load/DownloadTipActivity$c;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroid/widget/Button;)V

    invoke-virtual {v9, v0}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->setBreakListener(Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/DownloadTipActivity$d;

    invoke-direct {v1, v7, v9, v14}, Lcom/transsion/sniffer_load/DownloadTipActivity$d;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lz13;

    invoke-direct {v1, v7}, Lz13;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, La23;

    invoke-direct {v1, v7}, La23;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadTipActivity$e;

    invoke-direct {v0, v7}, Lcom/transsion/sniffer_load/DownloadTipActivity$e;-><init>(Lcom/transsion/sniffer_load/DownloadTipActivity;)V

    invoke-static {v7, v0}, Lag5;->k(Landroid/app/Activity;Lag5$e;)V

    return-object v8
.end method

.method public final synthetic r0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Landroid/widget/Button;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p2, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->d:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$string;->feedback_empty_1:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-virtual {p4}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    :goto_0
    invoke-static {p2, p1}, Ldz5;->e(ILjava/lang/String;)V

    sget p2, Lcom/transsion/sniffer_load/R$string;->feedback:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/sniffer_load/DownloadTipActivity;->Q:Ljava/lang/String;

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x5

    invoke-static {p0, p2, p3, p1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->f(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic s0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "dl_brower_rp_c_adl_guide_fb_op_close"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic t0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public final synthetic w0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadTipActivity;->p0()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const-string p0, "dl_brower_rp_c_adl_guide_fb_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
