.class public Lcom/transsion/onlinevideo/adapter/SessionAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_session:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    sget v0, Lcom/transsion/onlinevideo/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->p:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->q:I

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_session:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    if-ne p2, v1, :cond_0

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->q:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->p:I

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->getSeriesName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public c(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/SessionAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;)V

    return-void
.end method
