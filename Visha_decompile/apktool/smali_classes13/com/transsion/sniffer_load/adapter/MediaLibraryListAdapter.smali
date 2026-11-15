.class public final Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;",
        "l",
        "Lzfb;",
        "i",
        "(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;)V",
        "viewHolder",
        "data",
        "d",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V",
        "o",
        "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;",
        "mMediaLibraryItemListener",
        "a",
        "sniffer_load_release"
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
.field public o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$layout;->item_media_library:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->h(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->g(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Landroid/view/View;)V

    return-void
.end method

.method public static final g(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;->a(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V

    :cond_0
    return-void
.end method

.method public static final h(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;->b(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 10

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->ll_header:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getView(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_video1:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/transsion/sniffer_load/R$id;->iv_video2:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/transsion/sniffer_load/R$id;->iv_video3:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/transsion/sniffer_load/R$id;->rfl_video1:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    sget v6, Lcom/transsion/sniffer_load/R$id;->rfl_video2:I

    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    sget v7, Lcom/transsion/sniffer_load/R$id;->rfl_video3:I

    invoke-virtual {p1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    sget v8, Lcom/transsion/sniffer_load/R$id;->ll_videos:I

    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v9, Lcom/transsion/sniffer_load/R$drawable;->ic_avator_default:I

    invoke-virtual {v1, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget v9, Lcom/transsion/sniffer_load/R$id;->iv_avatar:I

    invoke-virtual {p1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_subtitle:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v5, v6, v7}, [Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    const/4 v5, 0x3

    invoke-static {v1, v5}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v6, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;

    iget-object v8, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;->getCover()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v8

    sget v9, Lcom/transsion/sniffer_load/R$drawable;->ic_online_cover_default:I

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/RequestBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    new-instance v8, Ljg6;

    invoke-direct {v8, p0, p2, v6}, Ljg6;-><init>(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v4, v7

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v1, v5, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p1, 0x8

    invoke-virtual {v8, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    new-instance p1, Lkg6;

    invoke-direct {p1, p0, p2}, Lkg6;-><init>(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;->o:Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;

    return-void
.end method
