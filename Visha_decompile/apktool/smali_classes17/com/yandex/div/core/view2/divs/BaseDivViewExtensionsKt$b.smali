.class public final Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->h(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/Bitmap;Ljava/util/List;Le74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Loj3;

.field public final synthetic f:Lze0;

.field public final synthetic g:Le74;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/List;Loj3;Lze0;Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->e:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->f:Lze0;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->g:Le74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p3, p3

    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p1, p4

    float-to-int p1, p1

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivFilter;

    instance-of p4, p3, Lcom/yandex/div2/DivFilter$a;

    if-eqz p4, :cond_5

    check-cast p3, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p3}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p3

    iget-object p3, p3, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->e:Loj3;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    const/16 p5, 0x1f

    shr-long p5, p3, p5

    const-wide/16 p7, 0x0

    cmp-long p9, p5, p7

    if-eqz p9, :cond_4

    const-wide/16 v0, -0x1

    cmp-long p5, p5, v0

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    sget-object p5, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p5

    if-eqz p5, :cond_2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Unable convert \'"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "\' to Int"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    cmp-long p3, p3, p7

    if-lez p3, :cond_3

    const p3, 0x7fffffff

    goto :goto_2

    :cond_3
    const/high16 p3, -0x80000000

    goto :goto_2

    :cond_4
    :goto_1
    long-to-int p3, p3

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->b:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const-string p5, "resources.displayMetrics"

    invoke-static {p4, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p3

    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->f:Lze0;

    invoke-virtual {p4, p1, p3}, Lze0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of p3, p3, Lcom/yandex/div2/DivFilter$c;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->b:Landroid/view/View;

    invoke-static {p3}, Lpdc;->f(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->f:Lze0;

    invoke-virtual {p3, p1}, Lze0;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;->g:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
