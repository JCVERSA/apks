.class public Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SourceFile"


# instance fields
.field public b:Lu55;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lu55;

    invoke-direct {v0}, Lu55;-><init>()V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;-><init>(Lu55;)V

    return-void
.end method

.method public constructor <init>(Lu55;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 3
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0}, Lu55;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0}, Lu55;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0, p1}, Lu55;->a(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0, p1}, Lu55;->b(Z)V

    return-void
.end method

.method public setOnItemMoveListener(Lze7;)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0, p1}, Lu55;->setOnItemMoveListener(Lze7;)V

    return-void
.end method

.method public setOnItemMovementListener(Laf7;)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0, p1}, Lu55;->setOnItemMovementListener(Laf7;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lbf7;)V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->b:Lu55;

    invoke-virtual {p0, p1}, Lu55;->setOnItemStateChangedListener(Lbf7;)V

    return-void
.end method
