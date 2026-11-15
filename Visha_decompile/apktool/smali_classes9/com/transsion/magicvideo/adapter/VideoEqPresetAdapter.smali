.class public Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    sget p1, Lcom/transsion/magicvideo/R$layout;->adapter_video_eq_preset:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->o:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->p:I

    const p1, -0x275e5e5f

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->q:I

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lcom/transsion/magicvideo/R$id;->tv_value:I

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget v1, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->o:I

    if-ne p2, v1, :cond_0

    .line 4
    sget p2, Lcom/transsion/magicvideo/R$drawable;->eq_video_preset_bg_checked:I

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 5
    iget p0, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->p:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    .line 6
    :cond_0
    sget p2, Lcom/transsion/magicvideo/R$drawable;->eq_video_preset_bg:I

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 7
    iget p0, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->q:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->o:I

    return p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
