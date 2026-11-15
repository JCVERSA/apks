.class public final Lcom/transsion/cloud/adapter/CloudSearchAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u000f\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/cloud/adapter/CloudSearchAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "viewHolder",
        "videoCloudData",
        "Lzfb;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "kotlin.jvm.PlatformType",
        "o",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "mVideoPlayManager",
        "Landroid/graphics/drawable/Drawable;",
        "p",
        "Landroid/graphics/drawable/Drawable;",
        "placeDrawableMain",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final o:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public final p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/netdisk/R$layout;->item_search_cloud_video_view:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/adapter/CloudSearchAdapter;->o:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$drawable;->main_fragment_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/adapter/CloudSearchAdapter;->p:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "viewHolder"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v2, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getView(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/CheckBox;

    sget v4, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item_more:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/ImageView;

    sget v6, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v6

    check-cast v12, Landroid/widget/ImageView;

    sget v6, Lcom/transsion/netdisk/R$id;->tv_tag:I

    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/transsion/netdisk/R$id;->iv_folder:I

    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v7

    check-cast v14, Landroid/widget/ImageView;

    sget v15, Lcom/transsion/netdisk/R$id;->tv_desc:I

    invoke-virtual {v1, v15}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/transsion/netdisk/R$id;->lottie_layer_view:I

    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/transsion/magicvideo/widgets/VideoLottieAnimationView;

    sget v9, Lcom/transsion/netdisk/R$id;->ll_list_item_operate_view:I

    invoke-virtual {v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDataType()Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v13, :cond_2

    :goto_0
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSourceId()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/transsion/cloud/adapter/CloudSearchAdapter;->o:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-static {v3, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDuration()Ljava/lang/Long;

    move-result-object v3

    const-string v16, ""

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sget v3, Lcom/transsion/netdisk/R$id;->tv_main_fragment_item_duration:I

    const-wide/16 v17, 0x0

    cmp-long v9, v7, v17

    if-nez v9, :cond_5

    move-object/from16 v7, v16

    goto :goto_4

    :cond_5
    invoke-static {v7, v8}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v1, v3, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getCover()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v3, v16

    :cond_7
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v7, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/transsion/cloud/adapter/CloudSearchAdapter;->p:Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    move-object v11, v3

    move v3, v13

    move/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lz7c;->e(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Z)V

    sget v7, Lcom/transsion/netdisk/R$id;->tv_title:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    move-object/from16 v8, v16

    :cond_8
    invoke-virtual {v1, v7, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getDataType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_c

    sget v6, Lcom/transsion/netdisk/R$id;->tv_size:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->getSize()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v0, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    move-object/from16 v0, v16

    :cond_b
    invoke-virtual {v1, v6, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v1, v6, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_6

    :cond_c
    :goto_5
    sget v0, Lcom/transsion/netdisk/R$id;->tv_size:I

    invoke-virtual {v1, v0, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v4}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v15}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/adapter/CloudSearchAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V

    return-void
.end method
