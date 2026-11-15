.class public Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/data/FileInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    sget v0, Lcom/transsion/magicvideo/R$layout;->item_subtitle_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileInfo;)V
    .locals 1

    sget p0, Lcom/transsion/magicvideo/R$id;->tv_item_fileinfo:I

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileInfo;->isMountPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/playercommon/data/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_item_fileinfo:I

    iget p2, p2, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileInfo;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 1

    if-ltz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method
