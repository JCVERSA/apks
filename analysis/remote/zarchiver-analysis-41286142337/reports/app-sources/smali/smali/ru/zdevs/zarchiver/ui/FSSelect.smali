.class public Lru/zdevs/zarchiver/ui/FSSelect;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lg0/i$d;
.implements Lw0/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/FSSelect$a;,
        Lru/zdevs/zarchiver/ui/FSSelect$b;,
        Lru/zdevs/zarchiver/ui/FSSelect$c;,
        Lru/zdevs/zarchiver/ui/FSSelect$d;
    }
.end annotation


# instance fields
.field public a:Lru/zdevs/zarchiver/ui/FSSelect$b;

.field public b:Lru/zdevs/zarchiver/ui/FSSelect$c;

.field public c:Ld0/h$a;

.field public final d:Lru/zdevs/zarchiver/b;

.field public e:Lq0/g;

.field public final f:[Lh0/b;

.field public g:Z

.field public h:Landroid/widget/TextView;

.field public final i:Lw0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lw0/a;

    .line 5
    .line 6
    invoke-direct {p1}, Lw0/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->i:Lw0/a;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    new-array p1, p1, [Lh0/b;

    .line 13
    .line 14
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->f:[Lh0/b;

    .line 15
    .line 16
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v0, 0x15

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-ge p2, v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lj0/a;

    .line 24
    .line 25
    invoke-direct {v0}, Lj0/a;-><init>()V

    .line 26
    .line 27
    .line 28
    aput-object v0, p1, v1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lj0/b;

    .line 32
    .line 33
    invoke-direct {v0}, Lj0/b;-><init>()V

    .line 34
    .line 35
    .line 36
    aput-object v0, p1, v1

    .line 37
    .line 38
    :goto_0
    const/16 v0, 0x17

    .line 39
    .line 40
    if-lt p2, v0, :cond_1

    .line 41
    .line 42
    new-instance p2, Lm0/a;

    .line 43
    .line 44
    invoke-direct {p2}, Lm0/a;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p2, 0x0

    .line 49
    :goto_1
    const/4 v0, 0x1

    .line 50
    aput-object p2, p1, v0

    .line 51
    .line 52
    new-instance p1, Lru/zdevs/zarchiver/b;

    .line 53
    .line 54
    invoke-direct {p1, v1}, Lru/zdevs/zarchiver/b;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 58
    .line 59
    new-instance p2, Lh0/h;

    .line 60
    .line 61
    sget-object v0, Lt0/b;->b:[Ljava/lang/String;

    .line 62
    .line 63
    aget-object v0, v0, v1

    .line 64
    .line 65
    invoke-direct {p2, v0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, v1, v1}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lg0/i;)Z
    .locals 1

    .line 1
    check-cast p1, Lg0/v;

    .line 2
    .line 3
    iget p1, p1, Lg0/v;->j:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ld0/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Ld0/h;->i()V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ld0/c;

    .line 26
    .line 27
    invoke-virtual {p1}, Ld0/h;->h()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ld0/c;

    .line 36
    .line 37
    invoke-virtual {p1}, Ld0/h;->g()V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lw0/a$b;)V
    .locals 0

    check-cast p1, Lru/zdevs/zarchiver/ui/FSSelect$a;

    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/FSSelect;->setFileList(Lru/zdevs/zarchiver/ui/FSSelect$a;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    sget v0, Lt0/b;->j:I

    .line 2
    .line 3
    const/high16 v1, 0x3f0000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lq0/g;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lq0/g;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    sget v2, Lt0/b;->k:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lq0/g;->d(Lq0/g$c;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ld0/c;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 45
    .line 46
    iput-object v1, v0, Ld0/h;->m:Lq0/g;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->i:Lw0/a;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, p0, v1}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lq0/g;->e(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    const/4 v1, -0x1

    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FSSelect;->i:Lw0/a;

    .line 15
    .line 16
    const/16 v3, 0x64

    .line 17
    .line 18
    invoke-virtual {v2, v3, v0, v1}, Lw0/a;->f(III)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Lw0/a;->d(Lw0/a$c;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FSSelect;->e()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getPath()Lh0/h;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    iget-object v0, v0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget-object p2, p1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Ld0/b;->b(I)Ld0/d;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Ld0/d;->f()Z

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-nez p4, :cond_2

    .line 17
    .line 18
    iget-boolean p4, p0, Lru/zdevs/zarchiver/ui/FSSelect;->g:Z

    .line 19
    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ld0/c;

    .line 27
    .line 28
    const/4 p2, 0x2

    .line 29
    invoke-virtual {p1, p3, p2}, Ld0/h;->j(II)Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/FSSelect;->a:Lru/zdevs/zarchiver/ui/FSSelect$b;

    .line 34
    .line 35
    if-eqz p3, :cond_4

    .line 36
    .line 37
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 38
    .line 39
    invoke-virtual {p1}, Lh0/h;->r()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p4, p2, Ld0/d;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p2}, Ld0/d;->d()B

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-interface {p3, p1, p4, p2}, Lru/zdevs/zarchiver/ui/FSSelect$b;->onFileSelect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p3, Lh0/h;

    .line 54
    .line 55
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 56
    .line 57
    invoke-direct {p3, p1}, Lh0/h;-><init>(Lh0/h;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ld0/d;->g()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p3}, Lh0/h;->c()Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p2, Ld0/d;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Lh0/h;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p0, p3}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lh0/h;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-void
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ld0/c;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return p2

    .line 11
    :cond_0
    invoke-virtual {p1, p3}, Ld0/h;->a(I)Ld0/d;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    return p2

    .line 18
    :cond_1
    invoke-virtual {p3}, Ld0/d;->g()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 p3, 0x1

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p2, p1, Ld0/h;->h:Ld0/b;

    .line 26
    .line 27
    iget p2, p2, Ld0/b;->a:I

    .line 28
    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Ld0/h;->h()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Ld0/h;->g()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    new-instance p1, Lh0/g;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Lh0/g;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    const/16 p4, 0xe

    .line 49
    .line 50
    invoke-virtual {p1, p4}, Lh0/g;->a(I)V

    .line 51
    .line 52
    .line 53
    const/16 p4, 0x10

    .line 54
    .line 55
    invoke-virtual {p1, p4}, Lh0/g;->a(I)V

    .line 56
    .line 57
    .line 58
    const/16 p4, 0xf

    .line 59
    .line 60
    invoke-virtual {p1, p4}, Lh0/g;->a(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    const p5, 0x7f0c00c3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    iput-object p4, p1, Lh0/g;->d:Ljava/lang/String;

    .line 75
    .line 76
    new-instance p5, Lg0/v;

    .line 77
    .line 78
    iget-object v0, p1, Lh0/g;->c:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p5, p2, v0, p4, p3}, Lg0/v;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iput-object p0, p5, Lg0/i;->b:Lg0/i$d;

    .line 84
    .line 85
    iget-object p2, p1, Lh0/g;->f:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    iget p1, p1, Lh0/g;->e:I

    .line 90
    .line 91
    invoke-virtual {p5, p1, p2}, Lg0/i;->o(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {p5}, Lg0/v;->v()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return p3
.end method

.method public setEmptyText(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->h:Landroid/widget/TextView;

    return-void
.end method

.method public setFileList(Lru/zdevs/zarchiver/ui/FSSelect$a;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->h:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v2, p1, Lru/zdevs/zarchiver/ui/FSSelect$a;->c:I

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/FSSelect$a;->b:Ld0/b;

    .line 29
    .line 30
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 31
    .line 32
    iget-object v3, v2, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iput-object v0, v2, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, v2, Lru/zdevs/zarchiver/b;->s:Ld0/a;

    .line 39
    .line 40
    iget v0, v2, Lru/zdevs/zarchiver/b;->f:I

    .line 41
    .line 42
    and-int/lit8 v0, v0, -0x3

    .line 43
    .line 44
    iput v0, v2, Lru/zdevs/zarchiver/b;->f:I

    .line 45
    .line 46
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/FSSelect$a;->a:Lh0/h;

    .line 48
    .line 49
    invoke-virtual {v2, p1, v1, v1}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ld0/h;

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Lru/zdevs/zarchiver/b;->b(Landroid/content/Context;Ld0/h;)Ld0/h;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->e:Lq0/g;

    .line 67
    .line 68
    iput-object v1, v0, Ld0/h;->m:Lq0/g;

    .line 69
    .line 70
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->c:Ld0/h$a;

    .line 71
    .line 72
    iput-object v1, v0, Ld0/h;->n:Ld0/h$a;

    .line 73
    .line 74
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->g:Z

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ld0/h;->m(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->b:Lru/zdevs/zarchiver/ui/FSSelect$c;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-interface {v0, p1}, Lru/zdevs/zarchiver/ui/FSSelect$c;->onPathChange(Lh0/h;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public setMultiSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->g:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setOnFileClickListener(Lru/zdevs/zarchiver/ui/FSSelect$b;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->a:Lru/zdevs/zarchiver/ui/FSSelect$b;

    return-void
.end method

.method public setOnItemSelectChanged(Ld0/h$a;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->c:Ld0/h$a;

    return-void
.end method

.method public setOnPathChangeListener(Lru/zdevs/zarchiver/ui/FSSelect$c;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->b:Lru/zdevs/zarchiver/ui/FSSelect$c;

    return-void
.end method

.method public setPath(Lh0/h;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lh0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FSSelect;->f:[Lh0/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    aget-object v0, v2, v1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p1, Lh0/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lx0/d;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lh0/h;->p(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "root"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lh0/h;->q(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    aget-object v0, v2, v1

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x6

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x4

    .line 37
    :goto_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 38
    .line 39
    iget-boolean v3, v1, Lru/zdevs/zarchiver/b;->i:Z

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    or-int/lit8 v0, v0, 0x20

    .line 44
    .line 45
    :cond_2
    new-instance v3, Lru/zdevs/zarchiver/ui/FSSelect$d;

    .line 46
    .line 47
    invoke-direct {v3, v1, p1, v2, v0}, Lru/zdevs/zarchiver/ui/FSSelect$d;-><init>(Lru/zdevs/zarchiver/b;Lh0/h;[Lh0/b;I)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FSSelect;->i:Lw0/a;

    .line 52
    .line 53
    invoke-virtual {v3, p1, v0}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setRootSupport(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect;->f:[Lh0/b;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lj0/c;

    .line 7
    .line 8
    invoke-direct {p1}, Lj0/c;-><init>()V

    .line 9
    .line 10
    .line 11
    aput-object p1, v1, v0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    :goto_0
    return-void
.end method
