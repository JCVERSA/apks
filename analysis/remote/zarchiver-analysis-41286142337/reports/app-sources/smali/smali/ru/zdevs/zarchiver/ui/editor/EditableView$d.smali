.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final synthetic d:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->d:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->b:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->d:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->d:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->p:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, -0x1

    .line 17
    if-eq v2, v4, :cond_1

    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    if-eq v2, v4, :cond_1

    .line 22
    .line 23
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->b:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 28
    .line 29
    xor-int/2addr v2, v3

    .line 30
    iput-boolean v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, 0x1f4

    .line 36
    .line 37
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-boolean v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 42
    .line 43
    :goto_0
    return-void
.end method
