.class public final Lru/zdevs/zarchiver/ZSelectFile$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZSelectFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile$b;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile$b;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ZSelectFile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile$b;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lb0/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v1, 0x7f09000b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f090004

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x5

    .line 35
    new-array p1, p1, [I

    .line 36
    .line 37
    fill-array-data p1, :array_0

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p2, p1, v1}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lv0/b;->i(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v0, 0x1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const p1, 0x7f070034

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    :cond_1
    return v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x7f070005
        0x7f070027
        0x7f070029
        0x7f070039
        0x7f070002
    .end array-data
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile$b;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lb0/c;->i()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    invoke-static {p2}, Lz0/e;->m(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
