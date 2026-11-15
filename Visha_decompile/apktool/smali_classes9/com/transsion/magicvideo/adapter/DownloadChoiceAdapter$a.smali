.class public Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

.field public final synthetic c:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic d:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->d:Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;

    iput-object p2, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    iput-object p3, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->setSize(J)V

    return-void
.end method

.method public onComplete()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_size:I

    const-string v4, "--"

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {v0, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le16;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le16;->g:Ljava/lang/String;

    const-string p0, "-1"

    sput-object p0, Le16;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v3}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getSize()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v4, Lcom/transsion/magicvideo/R$id;->tv_size:I

    invoke-virtual {v3, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    invoke-virtual {v2, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le16;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le16;->g:Ljava/lang/String;

    sput-object v0, Le16;->f:Ljava/lang/String;

    :goto_0
    invoke-static {}, Le16;->j()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_file_size_failed:"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_size:I

    const-string v1, "--"

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->lv_size_loading:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getMimeType()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Le16;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->b:Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->getResolutionRadio()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Le16;->g:Ljava/lang/String;

    const-string p0, "-1"

    sput-object p0, Le16;->f:Ljava/lang/String;

    invoke-static {}, Le16;->j()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/DownloadChoiceAdapter$a;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
