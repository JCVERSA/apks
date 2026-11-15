.class public final Lcom/yandex/div/core/view2/divs/DivTextBinder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivTextBinder;->K(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

.field public final synthetic d:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

.field public final synthetic e:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lcom/yandex/div/core/view2/divs/DivTextBinder;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivTextBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->d:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->e:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->g:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    sget-object p2, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->g:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->c:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    iget-object p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->d:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iget-object p5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->e:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    iget-object p6, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->f:Ljava/util/List;

    check-cast p6, Ljava/util/Collection;

    invoke-static {p6}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object p6

    iget-object p7, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->g:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object p8, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-static {p7, p8}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->y(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;)I

    move-result p7

    iget-object p8, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result p8

    iget-object p9, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-virtual {p9}, Landroid/view/View;->getPaddingBottom()I

    move-result p9

    sub-int/2addr p8, p9

    iget-object p9, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-virtual {p9}, Landroid/view/View;->getPaddingTop()I

    move-result p9

    sub-int/2addr p8, p9

    invoke-virtual/range {p2 .. p8}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->d(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[III)Landroid/graphics/RadialGradient;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
