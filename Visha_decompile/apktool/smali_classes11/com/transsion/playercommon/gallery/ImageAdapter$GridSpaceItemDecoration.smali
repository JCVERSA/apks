.class public Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/gallery/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridSpaceItemDecoration"
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->b:I

    iput p2, p0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;I)V
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->b:I

    rem-int/2addr p2, v0

    add-int/lit8 v1, v0, -0x1

    iget p0, p0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->c:I

    mul-int/2addr v1, p0

    mul-int/lit8 p0, v0, 0x2

    div-int/2addr v1, p0

    mul-int p0, v1, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    mul-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;->a(Landroid/graphics/Rect;I)V

    return-void
.end method
