.class public Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public o:Landroid/content/Context;

.field public final synthetic p:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;->p:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    sget p1, Lcom/transsion/onlinevideo/R$layout;->adapter_widget_label:I

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;)V
    .locals 2

    sget p0, Lcom/transsion/onlinevideo/R$id;->label_textview:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->isSpacialType()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->isHot()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_tag_hot:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->isNew()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_tag_new:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$c;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;)V

    return-void
.end method
