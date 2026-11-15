.class public Lcom/transsion/sniffer_load/DownloadFeedBackActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Lcom/transsion/playercommon/widgets/CustomRadioButton;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->n0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Lcom/transsion/playercommon/widgets/CustomRadioButton;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->o0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->m0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i0(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->p0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->l0(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic l0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method private synthetic o0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "dl_brower_rp_c_adl_guide_fb_op_close"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 17

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$layout;->dialog_download_feedback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_main_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;

    invoke-direct {v10}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;-><init>()V

    sget v0, Lcom/transsion/sniffer_load/R$id;->oset_content:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$color;->os_text_primary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$color;->os_text_quaternary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {v11}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->download_feedback_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    new-instance v0, Lwy2;

    invoke-direct {v0}, Lwy2;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v11, v1, v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditField$a;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v11}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lxy2;

    invoke-direct {v1, v7, v11}, Lxy2;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->scrollView:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/CheckedTextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb2:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/CheckedTextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->cb3:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/CheckedTextView;

    sget v0, Lcom/transsion/sniffer_load/R$id;->btn_done:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/playercommon/widgets/CustomRadioButton;

    invoke-virtual {v6, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v5, Lyy2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v6

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v16, v9

    move-object v9, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lyy2;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Lcom/transsion/playercommon/widgets/CustomRadioButton;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v10, v13}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->b(Landroid/widget/CheckedTextView;)V

    invoke-virtual {v10, v15}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->a(Landroid/widget/CheckedTextView;)V

    new-instance v0, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$a;

    invoke-direct {v0, v7, v11, v9}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$a;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/playercommon/widgets/CustomRadioButton;)V

    invoke-virtual {v10, v0}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;->setBreakListener(Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c$a;)V

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$b;

    invoke-direct {v1, v7, v10, v9}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity$b;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Lcom/transsion/playercommon/widgets/CustomRadioButton;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzy2;

    invoke-direct {v1, v7}, Lzy2;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laz2;

    move-object/from16 v2, v16

    invoke-direct {v1, v7, v2}, Laz2;-><init>(Lcom/transsion/sniffer_load/DownloadFeedBackActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v8}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k0(Landroid/widget/EditText;)Z
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

.method public final synthetic m0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getRealContainerView()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_0

    const/4 p0, 0x3

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadFeedBackActivity;->k0(Landroid/widget/EditText;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return v0
.end method

.method public final synthetic n0(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Lcom/transsion/sniffer_load/DownloadFeedBackActivity$c;Lcom/transsion/playercommon/widgets/CustomRadioButton;Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;Landroid/view/View;)V
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

    invoke-virtual {p3, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-virtual {p4}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    invoke-static {p0, p1}, Ldz5;->e(ILjava/lang/String;)V

    sget p0, Lcom/transsion/sniffer_load/R$string;->feedback_comfort:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    return-void
.end method

.method public final synthetic p0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->x0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method
