.class public Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;
.super Luz2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->z(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

.field public final synthetic d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Ljava/lang/Object;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iput-object p3, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p4, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-direct {p0, p2}, Luz2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isbM3U8Task()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHLSConverting()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v2, Lcom/transsion/sniffer_load/R$string;->converting:I

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {v0, v1, v2}, Lkz6;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    invoke-virtual {v1, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p1, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->i(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    iget-object v2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->c(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->v()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->i(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->v()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public d(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {p1, v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->g(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->v()V

    return-void
.end method

.method public e(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 0

    return-void
.end method

.method public f(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->v()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public g(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isbM3U8Task()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->c(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->c(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p1, p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->i(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    return-void
.end method

.method public h(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->v()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public i(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {p1, v0, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v1, p2, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {p1, v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->c:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    const-string v0, "DownloadingAdapter"

    invoke-virtual {p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->unRegister(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-static {p0, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
