.class public Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/SubtitleHistory;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->item_subtitle_history_list:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput-boolean p2, p0, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->o:Z

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 4

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_subtitle_name:I

    iget-object v1, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->subName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_language_name:I

    iget-object v1, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->subLanguageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_size:I

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->subSize:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_down_success:I

    iget-boolean v1, p0, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->o:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/magicvideo/R$id;->cb:I

    iget-boolean p0, p0, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->o:Z

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean p0, p2, Lcom/transsion/dbdata/beans/SubtitleHistory;->isCheck:Z

    invoke-virtual {p1, v1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$array;->language_entries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/magicvideo/R$array;->standard_language_values:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->o:Z

    return p0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/SubtitleHistoryAdapter;->o:Z

    return-void
.end method
