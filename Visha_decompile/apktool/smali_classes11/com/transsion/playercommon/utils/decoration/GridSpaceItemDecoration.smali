.class public Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->b:I

    .line 3
    iput p2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    .line 4
    invoke-static {}, Lav3;->z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->d:Z

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 7
    iput p1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->b:I

    .line 8
    iput p2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    .line 9
    invoke-static {}, Lav3;->z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->d:Z

    .line 10
    iput p3, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;I)V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->b:I

    rem-int/2addr p2, v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->d:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    div-int/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget p0, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    iget p0, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    div-int p0, p2, p0

    :goto_1
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_2
    iget v1, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    div-int/2addr v1, v2

    :goto_2
    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    iget p0, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    goto :goto_3

    :cond_4
    iget p2, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->c:I

    iget p0, p0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->e:I

    div-int p0, p2, p0

    :goto_3
    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_4
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->a(Landroid/graphics/Rect;I)V

    return-void
.end method
