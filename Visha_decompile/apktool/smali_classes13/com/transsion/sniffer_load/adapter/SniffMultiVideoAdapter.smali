.class public Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Ljava/util/Map;

.field public final p:I

.field public final q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/sniffer_load/R$layout;->rv_item_sniff_multi_video_download:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->o:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r:I

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$attr;->os_platform_basic_color:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->p:I

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->q:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->o:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 2

    iget v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    :goto_0
    return-void
.end method

.method public final i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 5

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_sniff_video_name:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->rl_sniff_multi_video:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_video_cover:I

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;-><init>(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 5

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_ratio:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_mime_type:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoMineType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoSize()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_size:I

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {v2, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoMineType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le16;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoResolution()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le16;->g:Ljava/lang/String;

    sput-object v0, Le16;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$id;->tv_size:I

    const-string v3, "--"

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoMineType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le16;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getFirstVideoResolution()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le16;->g:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Le16;->f:Ljava/lang/String;

    :goto_0
    invoke-static {}, Le16;->j()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    iget p2, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget p2, Lcom/transsion/sniffer_load/R$layout;->rv_item_sniff_video_resolution_download:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$layout;->rv_item_sniff_multi_video_download:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->r:I

    return-void
.end method

.method public final s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lav3;->x(Ljava/lang/String;)Z

    move-result p0

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_sniff_multi_video_download_detail:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$drawable;->ic_icon_download_error:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/sniffer_load/R$drawable;->ic_sniff_video_download:I

    goto :goto_1

    :cond_2
    :goto_0
    sget p0, Lcom/transsion/sniffer_load/R$drawable;->ic_sniff_video_download_disable:I

    :goto_1
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isInvalid()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_sniff_video_size:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_video_disable_tip:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->p:I

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v2, 0x1

    if-lez p2, :cond_1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_sniff_video_size:I

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->q:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_sniff_video_size:I

    const-string v0, "--"

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    iget p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->q:I

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    return-void
.end method
