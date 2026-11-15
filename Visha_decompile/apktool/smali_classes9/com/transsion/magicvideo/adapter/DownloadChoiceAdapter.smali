.class public Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Ljava/util/ArrayList;

.field public p:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->rv_item_download_choice_with_loading:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;)V

    return-void
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;)V
    .locals 7

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_ratio:I

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_mime_type:I

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->cb_choice:I

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_size:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Le16;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Le16;->g:Ljava/lang/String;

    sput-object p0, Le16;->f:Ljava/lang/String;

    invoke-static {}, Le16;->j()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    sget p0, Lcom/transsion/magicvideo/R$id;->tv_size:I

    const-string v0, "--"

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    sget p1, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {p0, p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le16;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le16;->g:Ljava/lang/String;

    const-string p0, "-1"

    sput-object p0, Le16;->f:Ljava/lang/String;

    invoke-static {}, Le16;->j()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->i(Ljava/lang/String;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;-><init>(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    :goto_1
    return-void
.end method

.method public i(Ljava/lang/String;)Lmc7;
    .locals 1

    new-instance v0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$b;-><init>(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public k(Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;ZI)V
    .locals 3

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->p:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;->b(I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->p:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$c;

    return-void
.end method
