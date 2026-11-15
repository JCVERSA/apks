.class public final Lgn9;
.super Lzs2;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Loj3;


# direct methods
.method public constructor <init>(Landroid/view/View;Loj3;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lzs2;-><init>()V

    iput-object p1, p0, Lgn9;->a:Landroid/view/View;

    iput-object p2, p0, Lgn9;->b:Loj3;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V
    .locals 6

    const-string p4, "canvas"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "layout"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lzs2;->e(Landroid/text/Layout;I)I

    move-result p4

    invoke-virtual {p0, p2, p3}, Lzs2;->b(Landroid/text/Layout;I)I

    move-result p2

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    new-instance p6, Le50;

    iget-object v0, p0, Lgn9;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v0, "view.resources.displayMetrics"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lgn9;->b:Loj3;

    move-object v0, p6

    move-object v2, p7

    move-object v3, p8

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Le50;-><init>(Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;Landroid/graphics/Canvas;Loj3;)V

    int-to-float p0, p3

    int-to-float p1, p4

    int-to-float p3, p5

    int-to-float p2, p2

    invoke-virtual {p6, p0, p1, p3, p2}, Le50;->a(FFFF)V

    return-void
.end method
