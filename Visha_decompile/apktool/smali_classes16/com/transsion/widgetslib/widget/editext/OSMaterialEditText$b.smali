.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->b:I

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const-string p4, ""

    if-eqz p3, :cond_2

    iget p5, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->b:I

    if-lt p2, p5, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->j(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;

    move-result-object p5

    sget p6, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p5, p6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->h(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-nez p5, :cond_1

    const/16 p5, 0x8

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;

    move-result-object p5

    sget p6, Lcom/transsion/widgetslib/R$string;->os_edit_text_num_format:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p5, p6, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateUnderlineView(ZZ)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$b;->d:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setHelpText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p3, p4}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->i(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->f(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
