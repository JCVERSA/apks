.class public final Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b$a;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->c(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx07;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lx07;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b$a;->b:Lx07;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b$a;->c:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;

    invoke-direct {p0, p1}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method


# virtual methods
.method public b(Ldq0;)V
    .locals 2

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b$a;->b:Lx07;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b$a;->c:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->b()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Lx07;->d(I)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->b()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lx07;->e(I)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->b()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lx07;->f(I)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;->b()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0}, Lx07;->g(I)V

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lx07;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
