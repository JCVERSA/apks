.class public final Lh0/a;
.super Landroid/view/ActionMode$Callback2;
.source "source.java"


# instance fields
.field private final a:Lh0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lh0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/a;->a:Lh0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lh0/b;->d(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lh0/b;->e(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lh0/a;->a:Lh0/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lh0/b;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lh0/a;->a:Lh0/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lh0/b;->c()Ly/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ly/i;->f()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    float-to-int p2, p2

    .line 14
    invoke-virtual {p1}, Ly/i;->i()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    invoke-virtual {p1}, Ly/i;->g()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    float-to-int v1, v1

    .line 24
    invoke-virtual {p1}, Ly/i;->c()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lh0/b;->g(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
