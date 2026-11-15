.class public final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;IILcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    iput p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->c:I

    iput p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->d:I

    invoke-direct {p0, p4}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lrk2;->a()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabDelimiter(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public b(Ldq0;)V
    .locals 2

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lrk2;->b(Ldq0;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->c:I

    iget p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->d:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabDelimiter(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/PictureDrawable;)V
    .locals 7

    const-string v0, "pictureDrawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lrk2;->c(Landroid/graphics/drawable/PictureDrawable;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->b:Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->c:I

    iget p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;->d:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabDelimiter(Landroid/graphics/Bitmap;II)V

    return-void
.end method
