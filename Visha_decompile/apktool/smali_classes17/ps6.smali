.class public final Lps6;
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

    iput-object p1, p0, Lps6;->a:Landroid/view/View;

    iput-object p2, p0, Lps6;->b:Loj3;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, "canvas"

    move-object/from16 v9, p1

    invoke-static {v9, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layout"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_0

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    :goto_0
    float-to-int v12, v5

    invoke-virtual {v0, v1, v2}, Lzs2;->b(Landroid/text/Layout;I)I

    move-result v13

    invoke-virtual {v0, v1, v2}, Lzs2;->e(Landroid/text/Layout;I)I

    move-result v14

    new-instance v15, Le50;

    iget-object v5, v0, Lps6;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const-string v5, "view.resources.displayMetrics"

    invoke-static {v6, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lps6;->b:Loj3;

    move-object v5, v15

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Le50;-><init>(Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;Landroid/graphics/Canvas;Loj3;)V

    move/from16 v5, p5

    int-to-float v5, v5

    int-to-float v6, v14

    int-to-float v7, v12

    int-to-float v8, v13

    invoke-virtual {v15, v5, v6, v7, v8}, Le50;->e(FFFF)V

    add-int/lit8 v5, v2, 0x1

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v0, v1, v5}, Lzs2;->e(Landroid/text/Layout;I)I

    move-result v6

    invoke-virtual {v0, v1, v5}, Lzs2;->b(Landroid/text/Layout;I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v6, v6

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    int-to-float v7, v7

    invoke-virtual {v15, v8, v6, v9, v7}, Le50;->d(FFFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, v11, :cond_2

    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    :goto_2
    float-to-int v2, v2

    invoke-virtual {v0, v1, v3}, Lzs2;->b(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {v0, v1, v3}, Lzs2;->e(Landroid/text/Layout;I)I

    move-result v0

    int-to-float v1, v2

    int-to-float v0, v0

    move/from16 v2, p6

    int-to-float v2, v2

    int-to-float v3, v4

    invoke-virtual {v15, v1, v0, v2, v3}, Le50;->c(FFFF)V

    return-void
.end method
