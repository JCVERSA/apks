.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x1

    .line 13
    :goto_0
    invoke-virtual {v0, p2}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->y:I

    .line 19
    .line 20
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->e(Landroid/view/Menu;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 11
    .line 12
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    invoke-static {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->b(Lru/zdevs/zarchiver/ui/editor/EditableView;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
