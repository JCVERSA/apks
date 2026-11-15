.class public Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lgw4;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lj;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$layout;->item_ai_subtitle_language_view:I

    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->o:I

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->p:I

    sget p2, Lcom/transsion/playercommon/R$color;->subtitle_language_text_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->q:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lj;)V
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->o:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->split:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->ic_language_flag:I

    iget-boolean v1, p2, Lj;->a:Z

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_language:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lj;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->p:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->q:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lj;->displayText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lj;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lj;)V

    return-void
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->r(I)Lj;

    move-result-object p0

    return-object p0
.end method

.method public r(I)Lj;
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/language/AILanguageAdapter;->o:I

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj;

    return-object p0
.end method
