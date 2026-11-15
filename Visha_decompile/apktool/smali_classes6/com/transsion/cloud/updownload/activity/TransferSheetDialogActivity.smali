.class public Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public N:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public O:Ljava/util/List;

.field public P:Lcom/transsion/cloudcore/db/CloudTaskEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->O:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->P:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    const-string v0, ""

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-static {p0}, Lav3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public final g0()Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_info:I

    sget v2, Lcom/transsion/playercommon/R$string;->info:I

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public initView()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->P:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_bottom_dialog_menu_recyclerview:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->rv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->N:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v2, p0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->O:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->g0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->N:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v3, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->O:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->N:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {v1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v1, Lcom/transsion/playercommon/R$id;->bottomEmpty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->f0(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileOperateItem;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object p3, p0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;->P:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method
