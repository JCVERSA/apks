.class public final Lcom/transsion/cloud/adapter/CloudDataAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/adapter/CloudDataAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001HB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\r\u0010\u001a\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001cj\u0008\u0012\u0004\u0012\u00020\u0002`\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00032\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u0014H\u0014\u00a2\u0006\u0004\u0008#\u0010$J!\u0010&\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010*\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008-\u0010\'R\u0018\u00100\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00103\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R$\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001cj\u0008\u0012\u0004\u0012\u00020\u0002`\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00109\u001a\u0004\u0018\u0001078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010;R\"\u0010@\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u00102\u001a\u0004\u0008>\u0010\u0012\"\u0004\u0008?\u0010\u000eR\"\u0010C\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u00102\u001a\u0004\u0008A\u0010\u0012\"\u0004\u0008B\u0010\u000eR\u001c\u0010G\u001a\n E*\u0004\u0018\u00010D0D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010F\u00a8\u0006I"
    }
    d2 = {
        "Lcom/transsion/cloud/adapter/CloudDataAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter$a;",
        "onDragListener",
        "Lzfb;",
        "setOnDragListener",
        "(Lcom/transsion/cloud/adapter/CloudDataAdapter$a;)V",
        "",
        "isSelected",
        "y",
        "(Z)V",
        "select",
        "u",
        "r",
        "()Z",
        "videoCloudData",
        "",
        "position",
        "isAdd",
        "v",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V",
        "g",
        "l",
        "()I",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "k",
        "()Ljava/util/ArrayList;",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateDefViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;",
        "viewHolder",
        "h",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V",
        "Landroid/widget/TextView;",
        "tvTag",
        "s",
        "(Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/widget/TextView;)V",
        "helper",
        "i",
        "o",
        "Lcom/transsion/cloud/adapter/CloudDataAdapter$a;",
        "mOnDragListener",
        "p",
        "Z",
        "mIsSelected",
        "q",
        "Ljava/util/ArrayList;",
        "selectVideoCloudList",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
        "placeDrawableMain",
        "",
        "J",
        "mFourteenDay",
        "t",
        "getMIsSearched",
        "setMIsSearched",
        "mIsSearched",
        "getMIsRecently",
        "x",
        "mIsRecently",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "kotlin.jvm.PlatformType",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "mVideoPlayManager",
        "a",
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
.field public o:Lcom/transsion/cloud/adapter/CloudDataAdapter$a;

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Landroid/graphics/drawable/Drawable;

.field public final s:J

.field public t:Z

.field public u:Z

.field public final v:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/netdisk/R$layout;->item_cloud_video_view:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

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

    iput-object v0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r:Landroid/graphics/drawable/Drawable;

    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->s:J

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->v:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-void
.end method

.method public static synthetic b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/widget/TextView;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->t(Landroid/widget/TextView;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 6

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iget-object v0, p1, Lcom/transsion/cloud/adapter/CloudDataAdapter;->o:Lcom/transsion/cloud/adapter/CloudDataAdapter$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/transsion/cloud/adapter/CloudDataAdapter$a;->a(Landroid/view/View;ILcom/transsion/dbdata/beans/VideoCloudData;ZLandroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final t(Landroid/widget/TextView;)Lzfb;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;ZIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->v(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "viewHolder"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget v3, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getView(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/CheckBox;

    sget v5, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item_more:I

    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/ImageView;

    sget v7, Lcom/transsion/netdisk/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v7

    check-cast v13, Landroid/widget/ImageView;

    sget v7, Lcom/transsion/netdisk/R$id;->tv_tag:I

    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    sget v8, Lcom/transsion/netdisk/R$id;->iv_folder:I

    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v8

    check-cast v15, Landroid/widget/ImageView;

    sget v14, Lcom/transsion/netdisk/R$id;->tv_desc:I

    invoke-virtual {v1, v14}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v8

    check-cast v12, Landroid/widget/TextView;

    sget v8, Lcom/transsion/netdisk/R$id;->lottie_layer_view:I

    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/transsion/magicvideo/widgets/VideoLottieAnimationView;

    instance-of v4, v2, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    move/from16 v16, v14

    const-string v18, ""

    const/16 v14, 0x8

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaCoverUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaUri()Landroid/net/Uri;

    move-result-object v8

    :goto_0
    move-object/from16 v17, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaCoverUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    :goto_1
    iget-object v8, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaDateModified()Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :cond_3
    move-wide/from16 v19, v9

    iget-object v10, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r:Landroid/graphics/drawable/Drawable;

    const/16 v16, 0x1

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-wide/from16 v10, v19

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move/from16 v19, v5

    move v5, v14

    move/from16 v14, v16

    invoke-static/range {v8 .. v14}, Lz7c;->e(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Z)V

    sget v8, Lcom/transsion/netdisk/R$id;->tv_title:I

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    move-object/from16 v9, v18

    :cond_4
    invoke-virtual {v1, v8, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v14, v22

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaDuring()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sget v9, Lcom/transsion/netdisk/R$id;->tv_main_fragment_item_duration:I

    invoke-static {v7, v8}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_5
    sget v7, Lcom/transsion/netdisk/R$id;->tv_size:I

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    iget-object v4, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    move-object/from16 v4, v18

    :cond_7
    invoke-virtual {v1, v7, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-object/from16 v16, v3

    const/4 v8, 0x2

    goto/16 :goto_f

    :cond_8
    move/from16 v19, v5

    move v5, v14

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v4

    iget-object v11, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->v:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v11, v11, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    :goto_2
    invoke-static {v4, v11}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sget v4, Lcom/transsion/netdisk/R$id;->tv_main_fragment_item_duration:I

    cmp-long v8, v11, v9

    if-nez v8, :cond_b

    move-object/from16 v8, v18

    goto :goto_4

    :cond_b
    invoke-static {v11, v12}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v1, v4, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v12}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCover()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    move-object v9, v4

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move-object/from16 v4, v18

    :cond_f
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_5

    :cond_10
    const/4 v10, 0x2

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move-object/from16 v4, v18

    :cond_12
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_5

    :goto_7
    iget-object v8, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r:Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    move-wide/from16 v10, v21

    move-object v5, v12

    move-object v12, v4

    move/from16 v17, v16

    const/4 v4, 0x0

    move-object/from16 v16, v3

    move-object v3, v14

    move/from16 v14, v20

    invoke-static/range {v8 .. v14}, Lz7c;->e(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Z)V

    sget v8, Lcom/transsion/netdisk/R$id;->tv_title:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13

    move-object/from16 v9, v18

    :cond_13
    invoke-virtual {v1, v8, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v8, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u:Z

    if-eqz v8, :cond_14

    const/16 v14, 0x8

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v8, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->p:Z

    if-nez v8, :cond_1a

    iget-boolean v8, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->t:Z

    if-nez v8, :cond_1a

    iget-boolean v8, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u:Z

    if-eqz v8, :cond_15

    const/16 v4, 0x8

    const/4 v8, 0x2

    goto :goto_d

    :cond_15
    invoke-virtual {v0, v2, v7}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->s(Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/widget/TextView;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCreateAt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSharerNickname()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    const/4 v8, 0x2

    goto :goto_b

    :cond_18
    sget-object v5, Lxkb;->a:Lxkb;

    const/4 v8, 0x2

    invoke-static {v5, v3, v4, v8, v4}, Lxkb;->c(Lxkb;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSharerNickname()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a
    move/from16 v4, v17

    goto :goto_c

    :goto_b
    sget-object v5, Lxkb;->a:Lxkb;

    invoke-static {v5, v3, v4, v8, v4}, Lxkb;->c(Lxkb;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :goto_c
    invoke-virtual {v1, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_e

    :cond_19
    const/4 v8, 0x2

    goto :goto_e

    :cond_1a
    const/4 v8, 0x2

    const/16 v4, 0x8

    :goto_d
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    sget v3, Lcom/transsion/netdisk/R$id;->tv_size:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v7, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    :cond_1b
    move-object/from16 v4, v18

    :cond_1c
    invoke-virtual {v1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_f
    sget v3, Lcom/transsion/netdisk/R$id;->tv_size:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v4

    if-ne v4, v8, :cond_1d

    const/4 v14, 0x4

    goto :goto_10

    :cond_1d
    const/4 v14, 0x0

    :goto_10
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->p:Z

    if-eqz v3, :cond_1e

    move-object/from16 v3, v16

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    :cond_1e
    move-object/from16 v3, v16

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u:Z

    if-nez v3, :cond_1f

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f
    :goto_11
    filled-new-array/range {v19 .. v19}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v3, v0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->o:Lcom/transsion/cloud/adapter/CloudDataAdapter$a;

    if-eqz v3, :cond_20

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V

    :cond_20
    return-void
.end method

.method public final i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V
    .locals 3

    new-instance v0, Landroidx/core/view/DragStartHelper;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lzy0;

    invoke-direct {v2, p1, p0, p2}, Lzy0;-><init>(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/adapter/CloudDataAdapter;Lcom/transsion/dbdata/beans/VideoCloudData;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/DragStartHelper;-><init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V

    invoke-virtual {v0}, Landroidx/core/view/DragStartHelper;->attach()V

    return-void
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    sget p2, Lcom/transsion/netdisk/R$layout;->item_cloud_video_view:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    const-string p1, "createBaseViewHolder(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s(Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/widget/TextView;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getWatchStatus()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCreateAt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lxkb;->a:Lxkb;

    invoke-virtual {v0, p1}, Lxkb;->d(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->s:J

    cmp-long p0, v2, p0

    if-lez p0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    new-instance p0, Laz0;

    invoke-direct {p0, p2}, Laz0;-><init>(Landroid/widget/TextView;)V

    :goto_1
    return-void
.end method

.method public final setOnDragListener(Lcom/transsion/cloud/adapter/CloudDataAdapter$a;)V
    .locals 1

    const-string v0, "onDragListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->o:Lcom/transsion/cloud/adapter/CloudDataAdapter$a;

    return-void
.end method

.method public final u(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final v(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->u:Z

    return-void
.end method

.method public final y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/adapter/CloudDataAdapter;->p:Z

    return-void
.end method
