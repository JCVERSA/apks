.class public Lcom/transsion/sniffer_load/DownloadLeadActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Landroid/widget/Button;

.field public O:Landroid/widget/ImageView;

.field public P:I

.field public Q:I

.field public R:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/DownloadLeadActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadLeadActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/sniffer_load/DownloadLeadActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/DownloadLeadActivity;->i0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "skip_download_guide"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "guide_dl_popup_check_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    const-string p0, "guide_dl_popup_close_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->N:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->R:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/16 v2, 0x132

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->P:I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->P:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xd8

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->P:I

    :goto_0
    const/16 v0, 0x24

    iput v0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->Q:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->N:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->P:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->Q:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->N:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initView()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$layout;->dialog_for_download_guide:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->btn_dialog_download_detail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->N:Landroid/widget/Button;

    sget v2, Lcom/transsion/sniffer_load/R$id;->close_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->O:Landroid/widget/ImageView;

    const-string v2, "guide_dl_popup_show"

    const-wide/16 v4, 0x246c

    invoke-static {v3, v2, v4, v5}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->N:Landroid/widget/Button;

    new-instance v3, Lqz2;

    invoke-direct {v3, p0}, Lqz2;-><init>(Lcom/transsion/sniffer_load/DownloadLeadActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadLeadActivity;->O:Landroid/widget/ImageView;

    new-instance v3, Lrz2;

    invoke-direct {v3, p0}, Lrz2;-><init>(Lcom/transsion/sniffer_load/DownloadLeadActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadLeadActivity;->h0()V

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadLeadActivity;->h0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    return-void
.end method
