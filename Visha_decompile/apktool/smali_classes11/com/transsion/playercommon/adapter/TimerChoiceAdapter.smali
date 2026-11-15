.class public Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->rv_item_timer_choice:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->o:I

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;)V
    .locals 4

    sget v0, Lcom/transsion/playercommon/R$id;->tv_timer_choice:I

    iget-object v1, p2, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-wide v0, p2, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    sget p2, Lcom/transsion/playercommon/R$id;->tv_timer_custom:I

    invoke-static {v0, v1}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    sget p2, Lcom/transsion/playercommon/R$id;->tv_timer_custom:I

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->music_timer_finish_current_song_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/playercommon/R$id;->tv_timer_custom:I

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    sget p2, Lcom/transsion/playercommon/R$id;->cb_choice:I

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget p0, p0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->o:I

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;->o:I

    return-void
.end method
