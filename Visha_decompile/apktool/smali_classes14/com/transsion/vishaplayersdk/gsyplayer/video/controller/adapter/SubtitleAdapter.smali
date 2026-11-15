.class public Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mThemeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/vishaplayersdk/R$layout;->item_subtitle:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/vishaplayersdk/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;->mThemeColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;)V
    .locals 2

    .line 2
    sget v0, Lcom/transsion/vishaplayersdk/R$id;->tv_subtitle:I

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;->mThemeColor:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 4
    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;)V

    return-void
.end method
