.class public Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/transsion/playercommon/data/SheetDialogParamsConstant;


# instance fields
.field public N:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public O:I

.field public P:Ljava/util/ArrayList;

.field public Q:Ljava/util/List;

.field public R:I

.field public S:Ljava/util/List;

.field public T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public U:Landroid/view/View;

.field public V:Z

.field public W:Z

.field public X:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->O:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->S:Ljava/util/List;

    return-void
.end method

.method private A0(Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->os_Remove:I

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    :goto_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->z0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->y0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->u0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->x0(ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->v0(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->w0(Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    return-void
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->s0(Lcom/transsion/dbdata/beans/media/MediaItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lda7;->a(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    return-void
.end method

.method private r0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v7

    iget-object v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    iget-boolean v8, v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->W:Z

    const/4 v9, 0x6

    const/16 v10, 0xd

    const/4 v11, 0x2

    const/16 v12, 0x1e

    if-eqz v8, :cond_5

    sget-boolean v0, Lpp3;->j:Z

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v12, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lox8;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v4, v0

    :cond_3
    if-eqz v6, :cond_4

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_rename:I

    sget v2, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-direct {v0, v1, v2, v11, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    invoke-direct {v0, v1, v2, v10, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_info:I

    sget v2, Lcom/transsion/playercommon/R$string;->info:I

    invoke-direct {v0, v1, v2, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_info:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    iget-boolean v8, v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->X:Z

    const/16 v13, 0xc

    const/4 v14, 0x4

    if-eqz v8, :cond_6

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_rename:I

    sget v2, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-direct {v0, v1, v2, v11, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_share:I

    sget v2, Lcom/transsion/playercommon/R$string;->share:I

    invoke-direct {v0, v1, v2, v14}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_share:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->icon_download_file:I

    sget v2, Lcom/transsion/playercommon/R$string;->download:I

    const/16 v5, 0xe

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_download:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    invoke-direct {v0, v1, v2, v13, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    iget v8, v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/16 v15, 0x2a

    if-eq v8, v15, :cond_12

    iget-object v8, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v15, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    new-instance v8, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v15, Lcom/transsion/magicvideo/R$drawable;->ic_menu_trans:I

    sget v13, Lcom/transsion/magicvideo/R$string;->convert_to_audio:I

    const/16 v10, 0xa

    invoke-direct {v8, v15, v13, v10}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v10, Lcom/transsion/playercommon/R$string;->os_load:I

    invoke-virtual {v8, v10}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v2, :cond_a

    new-instance v8, Lcom/transsion/playercommon/data/FileOperateItem;

    if-eqz v7, :cond_8

    sget v10, Lcom/transsion/magicvideo/R$drawable;->ic_farvorited_on:I

    goto :goto_3

    :cond_8
    sget v10, Lcom/transsion/magicvideo/R$drawable;->ic_farvorite:I

    :goto_3
    if-eqz v7, :cond_9

    sget v7, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_4

    :cond_9
    sget v7, Lcom/transsion/magicvideo/R$string;->favorites:I

    :goto_4
    const/4 v13, 0x7

    invoke-direct {v8, v10, v7, v13}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v8, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v10, Lcom/transsion/playercommon/R$drawable;->ic_file_trans:I

    sget v13, Lcom/transsion/playercommon/R$string;->visha_file_trans:I

    const-string v15, "file_trans_menu_click"

    invoke-static {v0, v15, v5}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v5, v4

    const/16 v15, 0x11

    invoke-direct {v8, v10, v13, v5, v15}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIZI)V

    sget v5, Lcom/transsion/playercommon/R$string;->os_move:I

    invoke-virtual {v8, v5}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v8, Lcom/transsion/playercommon/R$drawable;->ic_share:I

    sget v10, Lcom/transsion/playercommon/R$string;->share:I

    invoke-direct {v5, v8, v10, v14}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v8, Lcom/transsion/playercommon/R$string;->os_share:I

    invoke-virtual {v5, v8}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_b

    iget-boolean v5, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v5, :cond_b

    new-instance v5, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v8, Lcom/transsion/playercommon/R$drawable;->ic_add_song:I

    sget v10, Lcom/transsion/playercommon/R$string;->add_to:I

    const/4 v13, 0x3

    invoke-direct {v5, v8, v10, v13}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-virtual {v5, v4}, Lcom/transsion/playercommon/data/FileOperateItem;->setHasSubPage(Z)V

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/transsion/playercommon/data/FileOperateItem;->setSubTitle(Ljava/lang/String;)V

    sget v8, Lcom/transsion/playercommon/R$string;->os_add:I

    invoke-virtual {v5, v8}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v5, Lpp3;->j:Z

    if-nez v5, :cond_c

    if-lt v7, v12, :cond_c

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lox8;->a(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    goto :goto_5

    :cond_c
    move v1, v4

    :goto_5
    if-eqz v6, :cond_d

    new-instance v5, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v7, Lcom/transsion/playercommon/R$drawable;->ic_rename:I

    sget v8, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-direct {v5, v7, v8, v11, v1}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v7, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v5, v7}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v2, :cond_f

    sget-boolean v2, Lpp3;->p:Z

    if-nez v2, :cond_e

    invoke-static/range {p0 .. p0}, Ljf;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v6, :cond_f

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_hide:I

    sget v6, Lcom/transsion/playercommon/R$string;->hide:I

    invoke-direct {v2, v5, v6, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v4, Lcom/transsion/playercommon/R$drawable;->ic_info:I

    sget v5, Lcom/transsion/playercommon/R$string;->info:I

    invoke-direct {v2, v4, v5, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v4, Lcom/transsion/playercommon/R$string;->os_info:I

    invoke-virtual {v2, v4}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/16 v4, 0x21

    const/16 v5, 0xd

    if-eq v2, v5, :cond_10

    if-eq v2, v4, :cond_10

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->p0()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->q0()I

    move-result v6

    const/4 v7, 0x5

    invoke-direct {v2, v5, v6, v7, v1}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    invoke-direct {v0, v2}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->A0(Lcom/transsion/playercommon/data/FileOperateItem;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v0, v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_11

    if-eq v0, v4, :cond_11

    if-ne v0, v12, :cond_13

    :cond_11
    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v2, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v4, Lcom/transsion/playercommon/R$string;->delete:I

    const/16 v5, 0xc

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_no_privacy:I

    sget v2, Lcom/transsion/playercommon/R$string;->privacy_cancel_hide:I

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_info:I

    sget v2, Lcom/transsion/magicvideo/R$string;->info:I

    invoke-direct {v0, v1, v2, v9}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_info:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    sget v1, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setIconText(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_6
    return-object v3
.end method

.method public static synthetic y0(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addSoftKeyboardAnim()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string v1, "in_param_data_select_minetype_list_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->O:I

    const-string v1, "data_list_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "list_flag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const-string v1, "is_kt_transform_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->W:Z

    const-string v1, "is_kt_cloud_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->X:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v1}, Laz5;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->Q:Ljava/util/List;

    invoke-static {}, Lvg9;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "from_list_more_icon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->m0()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lvg9;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->P:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->P:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, La7c;

    invoke-direct {v3}, La7c;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lb7c;

    invoke-direct {v3, p0}, Lb7c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    sget v1, Lcom/transsion/playercommon/R$string;->add_to:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->n0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :goto_0
    return-void
.end method

.method public final varargs n0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7

    new-instance v6, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->Q:Ljava/util/List;

    iget v3, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->O:I

    iget-boolean v4, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->V:Z

    move-object v0, v6

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;-><init>(Landroid/content/Context;Ljava/util/List;IZ[Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p4, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->U:Landroid/view/View;

    if-eqz p4, :cond_0

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->U:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p4, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 p4, 0x0

    invoke-virtual {v6, p4}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->changeStyle(Z)V

    invoke-virtual {p0, v6}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance p1, Ly6c;

    invoke-direct {p1, p0}, Ly6c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lz6c;

    invoke-direct {p1, p0}, Lz6c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleCloseIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_2
    invoke-virtual {p4, p3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public final o0(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/util/List;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V
    .locals 9

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p6

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v3

    new-instance p6, Lx6c;

    move-object v1, p6

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lx6c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    invoke-static {p6}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "video_sheet_dialog_destroy"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileOperateItem;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getSubTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    filled-new-array {p2}, [Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, v1, p3, p2}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->n0(Ljava/lang/String;ZZ[Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    const-string p0, "vd_vmore_addlist_cl"

    const-wide/16 p1, 0x246c

    const-string p3, "video"

    invoke-static {p3, p0, p1, p2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    iget-object v4, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v6, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->S:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->o0(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/util/List;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p2

    const/16 p3, 0x11

    if-ne p2, p3, :cond_3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x495

    invoke-virtual {p1, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p1, "file_trans_menu_click"

    invoke-static {p0, p1, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const-string p1, "vd_video"

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object p3, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "media_type"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public p0()I
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_remove:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_delete_all:I

    return p0
.end method

.method public q0()I
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->delete:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->remove:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->clear:I

    return p0
.end method

.method public final s0(Lcom/transsion/dbdata/beans/media/MediaItem;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_bottom_dialog_menu_recyclerview:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->U:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->rv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->S:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->r0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->S:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->T:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->U:Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$id;->bottomEmpty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->w(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->U:Landroid/view/View;

    return-object p0
.end method

.method public final synthetic t0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public final synthetic u0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final synthetic v0(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0, p1}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->g()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcd;->i(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->R:I

    const/16 p2, 0x21

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_2
    return-void
.end method

.method public final synthetic w0(Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/data/FileOperateItem;

    if-nez p3, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_farvorited_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_farvorite:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/FileOperateItem;->setImageResId(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileOperateItem;

    if-nez p3, :cond_1

    sget v0, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$string;->favorites:I

    :goto_1
    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/data/FileOperateItem;->setTextResId(I)V

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ld7c;

    invoke-direct {p2, p0, p4, p3}, Ld7c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Z)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic x0(ZLcom/transsion/dbdata/beans/media/MediaItem;Landroid/app/Activity;Ljava/util/List;ILcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V
    .locals 8

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    if-eqz p3, :cond_0

    new-instance p2, Lc7c;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move v5, p5

    move v6, p1

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lc7c;-><init>(Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;Ljava/util/List;IZLcom/transsion/playercommon/adapter/FileOperateMenuAdapter;)V

    invoke-virtual {p3, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x41c

    invoke-virtual {p0, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x41d

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic z0(Ljava/lang/Integer;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;->V:Z

    return-void
.end method
