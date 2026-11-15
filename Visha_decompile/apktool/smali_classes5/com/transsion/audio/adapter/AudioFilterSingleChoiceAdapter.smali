.class public Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$layout;->item_audio_filter_type_single_choice:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->o:I

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget v0, Lcom/transsion/audio/R$id;->checkedTextView:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget p0, p0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->o:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->o:I

    return p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->o:I

    return-void
.end method
