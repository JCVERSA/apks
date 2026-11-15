.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateOutlineRoundCorner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;->b:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;->a:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$a;->a:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
