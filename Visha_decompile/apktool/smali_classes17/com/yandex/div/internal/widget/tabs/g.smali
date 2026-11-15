.class public final Lcom/yandex/div/internal/widget/tabs/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

.field public c:Landroid/graphics/Bitmap;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indicators"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->d()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->b()Landroid/view/View;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->s(Z)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/g;->e:I

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/g;->d:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->c:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->s(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->b()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/g;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/Bitmap;II)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/g;->c:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/yandex/div/internal/widget/tabs/g;->d:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/g;->e:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/g;->a()V

    return-void
.end method
