.class public Lcom/transsion/btdownload/ui/FileSelectAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/btdownload/ui/DownloadableFileItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    sget p1, Lcom/transsion/bt_download/R$layout;->adapter_file_select:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V
    .locals 3

    sget v0, Lcom/transsion/bt_download/R$id;->tv_name:I

    iget-object v1, p2, Lcom/transsion/btdownload/ui/FileItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_size:I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/transsion/btdownload/ui/FileItem;->size:J

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p2, Lcom/transsion/btdownload/ui/FileItem;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "unknow"

    :goto_0
    sget-object v0, Lhk3;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_bt_video_cover:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_1
    sget-object v0, Lhk3;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_audio_default_placeholder:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_2
    sget-object v0, Lhk3;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_subtitle_defalut_placeholder:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_3
    sget-object v0, Lhk3;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_bt_img_cover:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_4
    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    sget v0, Lcom/transsion/bt_download/R$drawable;->ic_others_default_holder:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_1
    sget p0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    iget-boolean p2, p2, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/ui/FileSelectAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V

    return-void
.end method
