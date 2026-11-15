.class public Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;
.super Lnhb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->z(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/task/NewUploadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/cloud/upload/task/NewUploadTask;

.field public final synthetic d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Ljava/lang/Object;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iput-object p3, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p4, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->c:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-direct {p0, p2}, Lnhb;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->c:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->i(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->r(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->w()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public b(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->r(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->c:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const-string v1, "UploadingAdapter"

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->unRegister(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public c(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->r(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->w()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public d(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    sget v2, Lcom/transsion/sniffer_load/R$string;->visha_video_transcoding_new:I

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    invoke-static {v0, v1, v2}, Lkz6;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    invoke-virtual {v1, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p1, v1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->j(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_speed:I

    iget-object v2, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v2}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->c(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/sniffer_load/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->w()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public e(Lcom/transsion/cloud/upload/model/UploadProgressInfo;Z)V
    .locals 0

    return-void
.end method

.method public f(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->c:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1, v0, v1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->g(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->w()V

    return-void
.end method

.method public g(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->h(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->r(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->b:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->l(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->d(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;)Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->w()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter$a;->d:Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;->k(Lcom/transsion/cloud/updownload/adapter/UploadingAdapter;Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method
