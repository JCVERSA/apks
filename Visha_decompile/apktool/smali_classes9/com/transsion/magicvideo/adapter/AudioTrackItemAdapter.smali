.class public Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/database/AudioTrack;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$layout;->audio_track_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;->p:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;->o:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/AudioTrack;)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_audio_track:I

    sget v1, Lcom/transsion/magicvideo/R$string;->disable:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$id;->tv_audio_track:I

    iget-object v1, p2, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    sget v0, Lcom/transsion/magicvideo/R$id;->cb_track:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iget p2, p2, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    iget p0, p0, Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;->p:I

    if-ne p2, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/AudioTrack;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;->p:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
