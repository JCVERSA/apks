.class public Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->b:I

    iput p2, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->c:I

    invoke-static {}, Lav3;->z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->d:Z

    iput p3, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;I)V
    .locals 0

    iget p2, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->c:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->e:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;->a(Landroid/graphics/Rect;I)V

    return-void
.end method
