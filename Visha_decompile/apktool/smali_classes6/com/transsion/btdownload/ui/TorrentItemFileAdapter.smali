.class public Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/content/Context;

.field public p:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public q:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/util/HashSet;

.field public u:Z

.field public v:I

.field public w:I

.field public x:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V
    .locals 1

    sget v0, Lcom/transsion/bt_download/R$layout;->adapter_header_torrent_file:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    iput v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->v:I

    iput v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->w:I

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->o:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->r:Z

    iput-object p3, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->x:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->v(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->x:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    return-object p0
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->w:I

    return-void
.end method

.method public B(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->r:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public E(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public F()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    instance-of p1, p0, Lcom/transsion/btdownload/TorrentingFileTree;

    if-eqz p1, :cond_0

    const/16 p0, 0x3e9

    return p0

    :cond_0
    instance-of p1, p0, Lcom/transsion/btdownload/TorrentedFileTree;

    if-eqz p1, :cond_1

    const/16 p0, 0x3eb

    return p0

    :cond_1
    instance-of p1, p0, Lcom/transsion/btdownload/TorrentHeaderFileTree;

    if-eqz p1, :cond_2

    const/16 p0, 0x3ed

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_3

    const/16 p0, 0x3ec

    goto :goto_0

    :cond_3
    const/16 p0, 0x3ea

    :goto_0
    return p0
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 4

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item:I

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_0
    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item_more:I

    iget-boolean v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    iget-boolean v3, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnLongClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2, v2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->y(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Z)V

    return-void
.end method

.method public final j(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 7

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item:I

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sget v4, Lcom/transsion/bt_download/R$id;->progressBar:I

    const-wide/16 v5, 0x64

    mul-long/2addr v0, v5

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_0
    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item_speed:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item_size:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    iget-object v2, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->y(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Z)V

    return-void
.end method

.method public final k(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 2

    sget p2, Lcom/transsion/bt_download/R$id;->tv_downloaded_count:I

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->o:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->downloaded_status_count:I

    iget p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->v:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 2

    sget p2, Lcom/transsion/bt_download/R$id;->ll_enable_ing:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/InterceptLinearLayout;

    iget-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    sget p2, Lcom/transsion/bt_download/R$id;->tv_downloading_count:I

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->o:Landroid/content/Context;

    sget v1, Lcom/transsion/bt_download/R$string;->downloading_status_count:I

    iget p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->w:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget p2, Lcom/transsion/bt_download/R$layout;->adapter_header_torrent_file:I

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p2, Lcom/transsion/bt_download/R$layout;->item_downloaded:I

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget p2, Lcom/transsion/bt_download/R$layout;->item_title_downloaded:I

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->q:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-object p1

    :pswitch_3
    sget p2, Lcom/transsion/bt_download/R$layout;->item_downloading:I

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget p2, Lcom/transsion/bt_download/R$layout;->item_title_downloading:I

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->p:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0
.end method

.method public s()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    return-object p0
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 2

    sget p2, Lcom/transsion/bt_download/R$id;->ll_enable_add:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iget-boolean v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;-><init>(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public u()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->v:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sub-int/2addr v1, v2

    iget p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->w:I

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    sub-int/2addr v1, p0

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public final synthetic v(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/btdownload/TorrentedFileTree;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/transsion/btdownload/TorrentingFileTree;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lnsa;

    invoke-direct {v1, p0}, Lnsa;-><init>(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public x(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final y(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Z)V
    .locals 5

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknow"

    :goto_0
    sget v1, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    iget-boolean v2, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u:Z

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget-object v1, Lhk3;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p3, Ljava/io/File;

    sget-object v0, Lyx2;->j:Ljava/io/File;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getPath()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Ljava/io/File;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object p3

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_bt_video_cover:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p2, p3, p0, p1}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_2
    sget-object p0, Lhk3;->d:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_audio_default_placeholder:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_3
    sget-object p0, Lhk3;->e:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_subtitle_defalut_placeholder:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_4
    sget-object p0, Lhk3;->g:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez p3, :cond_5

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_bt_img_cover:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/io/File;

    sget-object p3, Lyx2;->j:Ljava/io/File;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget p2, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p3, Lcom/transsion/bt_download/R$drawable;->ic_bt_img_cover:I

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_6
    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_others_default_holder:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->v:I

    return-void
.end method
