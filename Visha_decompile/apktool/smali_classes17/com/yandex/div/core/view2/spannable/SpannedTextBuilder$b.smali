.class public final Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/yandex/div/core/view2/a;

.field public final c:Lcom/yandex/div2/DivText$Image;

.field public final d:Lcom/yandex/div/core/view2/spannable/a;

.field public final e:Landroid/text/Spanned;

.field public final f:Le74;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText$Image;Lcom/yandex/div/core/view2/spannable/a;Landroid/text/Spanned;Le74;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSpan"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spannedText"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-direct {p0, v0}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->b:Lcom/yandex/div/core/view2/a;

    iput-object p2, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->c:Lcom/yandex/div2/DivText$Image;

    iput-object p3, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->d:Lcom/yandex/div/core/view2/spannable/a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->e:Landroid/text/Spanned;

    iput-object p5, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->f:Le74;

    return-void
.end method


# virtual methods
.method public b(Ldq0;)V
    .locals 4

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lrk2;->b(Ldq0;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->c:Lcom/yandex/div2/DivText$Image;

    iget-object v2, v2, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->c:Lcom/yandex/div2/DivText$Image;

    iget-object v3, v3, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivBlendMode;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->E0(Lcom/yandex/div2/DivBlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->d:Lcom/yandex/div/core/view2/spannable/a;

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/spannable/a;->f(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->f:Le74;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;->e:Landroid/text/Spanned;

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
