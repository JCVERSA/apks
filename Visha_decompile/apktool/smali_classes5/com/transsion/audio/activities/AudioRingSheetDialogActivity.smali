.class public Lcom/transsion/audio/activities/AudioRingSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v1, Lcom/transsion/audio/widgets/AudioRingTypeListView;

    invoke-direct {v1, p0, v0}, Lcom/transsion/audio/widgets/AudioRingTypeListView;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$string;->set_as:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0}, Lda7;->a(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
