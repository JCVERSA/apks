.class public Lcom/transsion/audio/adapter/LyricAdapter;
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

    sget v0, Lcom/transsion/audio/R$layout;->item_lyric_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileInfo;)V
    .locals 1

    sget p0, Lcom/transsion/audio/R$id;->tv_item_fileinfo:I

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

    sget p0, Lcom/transsion/audio/R$id;->iv_item_fileinfo:I

    iget p2, p2, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/data/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/LyricAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/data/FileInfo;)V

    return-void
.end method
