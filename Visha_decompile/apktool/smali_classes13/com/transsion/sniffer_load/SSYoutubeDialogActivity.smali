.class public Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;->g0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic g0(Landroid/view/View;)V
    .locals 0

    const-string p1, "dl_brower_rp_ldend_ssguide_go"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 5
    sget v0, Lcom/transsion/sniffer_load/R$id;->btn_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 6
    new-instance v0, Lq09;

    invoke-direct {v0, p0}, Lq09;-><init>(Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    .line 2
    sget v0, Lcom/transsion/sniffer_load/R$layout;->dialog_for_ssytb_download_button:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    .line 4
    invoke-direct {p0, v0}, Lcom/transsion/sniffer_load/SSYoutubeDialogActivity;->initView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    const-string p0, "dl_brower_rp_c_adl_guide_close_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
