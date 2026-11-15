.class public Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public p:Z

.field public q:Landroid/content/Context;

.field public r:Ljava/util/ArrayList;

.field public s:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

.field public t:Lcu4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->p:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    sget v1, Lcom/transsion/sniffer_load/R$layout;->adapter_downloading:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 v0, 0x1

    sget v1, Lcom/transsion/sniffer_load/R$layout;->adapter_downloading_title:I

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    iput-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->s:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->y(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->s:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->G(Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->H(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->I(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->J(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHeaderTask()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t:Lcu4;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcu4;->c(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t:Lcu4;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcu4;->b(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public B(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t:Lcu4;

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcu4;->b(I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public C(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public D(Lcu4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t:Lcu4;

    return-void
.end method

.method public E(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final F(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 7

    iget-object v0, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->I(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_retry:I

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_data_source:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->x(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z

    move-result v6

    invoke-virtual {p1, v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v1, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    iget v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isbM3U8Task()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHLSConverting()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->converting:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-wide v0, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {p2, v0, v1}, Lkz6;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->J(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    :goto_3
    return-void
.end method

.method public final G(Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 4

    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string v0, "%s"

    if-lez p0, :cond_0

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-wide v1, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {p0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    const-string v1, "--"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    sget p0, Lcom/transsion/sniffer_load/R$id;->progressBar:I

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final H(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget v0, p1, Lcom/lzy/okgo/model/Progress;->lastStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne v2, v1, :cond_1

    :cond_0
    if-eq v0, v1, :cond_2

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->s:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->k()V

    :cond_2
    return-void
.end method

.method public final I(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final J(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    :cond_1
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->net_not_connect:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->visha_download_error_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_8

    const/4 v2, 0x1

    if-eq p2, v2, :cond_7

    const/4 v2, 0x3

    if-eq p2, v2, :cond_6

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v1, Lcom/transsion/sniffer_load/R$string;->download_pause_by_mobile_a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->visha_download_error_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_4
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->complete:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->visha_basic_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_5
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_failed:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->s()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_6
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_status_pause:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_7
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_status_wait:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_8
    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_connecting:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHeaderTask()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_title_working:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;

    invoke-virtual {p2}, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;->getHeaderType()Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    move-result-object p2

    sget-object v0, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->download_failed:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    sget v0, Lcom/transsion/sniffer_load/R$string;->mv_download:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/lzy/okgo/model/Progress;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_data_source:I

    iget-object v1, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_source_cloud:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_source_website:I

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->x(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->z(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public final s()I
    .locals 0

    const p0, -0x83f0

    return p0
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNewData: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadingAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lf23;

    invoke-direct {v0}, Lf23;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public u()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 3

    iget-object v0, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item:I

    iget-object v2, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lr13;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->G(Lcom/lzy/okgo/model/Progress;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isbM3U8Task()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    iget-object v2, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget-object v2, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_checkBox:I

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close_button:I

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->o:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->F(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/lzy/okgo/model/Progress;)Z
    .locals 2

    sget p0, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lcom/lzy/okgo/model/Progress;->hashCode()I

    move-result p1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final x(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)Z
    .locals 1

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final z(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;

    const-string v1, "DownloadingAdapter"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter$a;-><init>(Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;Ljava/lang/Object;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    invoke-virtual {p2, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-void
.end method
