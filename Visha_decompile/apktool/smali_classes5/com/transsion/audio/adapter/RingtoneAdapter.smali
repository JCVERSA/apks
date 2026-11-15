.class public Lcom/transsion/audio/adapter/RingtoneAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->rv_item_playlist_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/adapter/RingtoneAdapter;->o:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->tv_item_name:I

    iget-object v1, p2, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget p0, p0, Lcom/transsion/audio/adapter/RingtoneAdapter;->o:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/playercommon/R$id;->iv_item:I

    iget p2, p2, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;->resId:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/RingtoneAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;)V

    return-void
.end method
