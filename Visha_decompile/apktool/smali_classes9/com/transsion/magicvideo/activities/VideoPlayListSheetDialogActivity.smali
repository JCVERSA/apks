.class public Lcom/transsion/magicvideo/activities/VideoPlayListSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mIsDayNight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setDayNightType(Z)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mCallFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setCallFrom(Ljava/lang/String;)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->adaptFoldState(Z)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x43ec8000    # 473.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->fixedPagerHeight(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mCallFrom:Ljava/lang/String;

    invoke-static {p0}, Lj06;->d(Ljava/lang/String;)V

    return-void
.end method
