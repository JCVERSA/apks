.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;->c:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;->b:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;->c:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object p4, p4, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->playListImgAdapter:Lcom/transsion/magicvideo/adapter/PlayListImgAdapter;

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_1

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$f;->b:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iput p3, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
