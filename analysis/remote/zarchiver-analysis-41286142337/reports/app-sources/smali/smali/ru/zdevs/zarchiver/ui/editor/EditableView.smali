.class public Lru/zdevs/zarchiver/ui/editor/EditableView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lc1/a;
.implements Lru/zdevs/zarchiver/ui/editor/e;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lru/zdevs/zarchiver/ui/editor/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/editor/EditableView$d;,
        Lru/zdevs/zarchiver/ui/editor/EditableView$g;,
        Lru/zdevs/zarchiver/ui/editor/EditableView$f;,
        Lru/zdevs/zarchiver/ui/editor/EditableView$e;,
        Lru/zdevs/zarchiver/ui/editor/EditableView$c;,
        Lru/zdevs/zarchiver/ui/editor/EditableView$b;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:[I

.field public final e:Lru/zdevs/zarchiver/ui/editor/b;

.field public final f:Lru/zdevs/zarchiver/ui/editor/c;

.field public final g:Lc1/b;

.field public final h:Landroid/text/method/TextKeyListener;

.field public final i:Lru/zdevs/zarchiver/ui/editor/f;

.field public final j:Landroid/view/inputmethod/InputMethodManager;

.field public final k:Lc1/e;

.field public final l:Landroid/graphics/Paint;

.field public m:Landroid/view/ActionMode;

.field public n:I

.field public final o:Lru/zdevs/zarchiver/ui/editor/d;

.field public final p:Landroid/graphics/Rect;

.field public final q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lru/zdevs/zarchiver/ui/editor/EditableView$f;

.field public v:I

.field public w:Lc1/d;

.field public final x:Lru/zdevs/zarchiver/ui/editor/EditableView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Lru/zdevs/zarchiver/ui/editor/EditableView$a;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lru/zdevs/zarchiver/ui/editor/EditableView$a;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->x:Lru/zdevs/zarchiver/ui/editor/EditableView$a;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-static {p2, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    float-to-int v1, v1

    .line 34
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->a:I

    .line 35
    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 45
    .line 46
    invoke-static {p2, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    float-to-int v1, v1

    .line 51
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->b:I

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    new-array v1, v1, [I

    .line 55
    .line 56
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    new-array v1, v1, [I

    .line 60
    .line 61
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 62
    .line 63
    new-instance v1, Lc1/e;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Lc1/e;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 69
    .line 70
    new-instance v2, Lru/zdevs/zarchiver/ui/editor/b;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lru/zdevs/zarchiver/ui/editor/b;-><init>(Lru/zdevs/zarchiver/ui/editor/e;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 76
    .line 77
    new-instance v3, Lru/zdevs/zarchiver/ui/editor/c;

    .line 78
    .line 79
    invoke-direct {v3, p1, p0, v1}, Lru/zdevs/zarchiver/ui/editor/c;-><init>(Landroid/content/Context;Lc1/a;Lc1/e;)V

    .line 80
    .line 81
    .line 82
    iput-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 83
    .line 84
    new-instance v1, Lc1/b;

    .line 85
    .line 86
    invoke-direct {v1, p0, v2}, Lc1/b;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 90
    .line 91
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->h:Landroid/text/method/TextKeyListener;

    .line 96
    .line 97
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/f;

    .line 98
    .line 99
    invoke-direct {v1}, Lru/zdevs/zarchiver/ui/editor/f;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->i:Lru/zdevs/zarchiver/ui/editor/f;

    .line 103
    .line 104
    const-string v1, "input_method"

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .line 112
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 113
    .line 114
    new-instance p1, Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->l:Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Lru/zdevs/zarchiver/ui/editor/d;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/editor/d;-><init>(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->o:Lru/zdevs/zarchiver/ui/editor/d;

    .line 130
    .line 131
    new-instance p1, Landroid/graphics/Rect;

    .line 132
    .line 133
    const/4 p2, -0x1

    .line 134
    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->p:Landroid/graphics/Rect;

    .line 138
    .line 139
    new-instance p1, Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 145
    .line 146
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 147
    .line 148
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 149
    .line 150
    return-void
.end method

.method public static b(Lru/zdevs/zarchiver/ui/editor/EditableView;Landroid/view/Menu;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x102001f

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object p0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 22
    .line 23
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 24
    .line 25
    if-eq v0, p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private getDisplayMetricsOrSystem()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private getLineNumberWidth()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->l:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 8
    .line 9
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->a:I

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0xc

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    add-float/2addr v0, v1

    .line 31
    float-to-int v0, v0

    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    move-result v0

    return v0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 6
    .line 7
    iget v1, v1, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->o:Lru/zdevs/zarchiver/ui/editor/d;

    .line 12
    .line 13
    iget v1, v0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/d;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    move-result v0

    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 6
    .line 7
    iget v1, v1, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final e(Landroid/view/Menu;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const v4, 0x1010311

    .line 10
    .line 11
    .line 12
    aput v4, v2, v3

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const v5, 0x1010312

    .line 16
    .line 17
    .line 18
    aput v5, v2, v4

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    const v7, 0x1010313

    .line 22
    .line 23
    .line 24
    aput v7, v2, v6

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    const v8, 0x101037e

    .line 28
    .line 29
    .line 30
    aput v8, v2, v7

    .line 31
    .line 32
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v9, 0x15

    .line 35
    .line 36
    if-lt v8, v9, :cond_0

    .line 37
    .line 38
    const v5, 0x1010479

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v10, 0x4

    .line 42
    aput v5, v2, v10

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const v2, 0x1020020

    .line 55
    .line 56
    .line 57
    const v5, 0x1040003

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v4, v2, v10, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/16 v5, 0x78

    .line 65
    .line 66
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    const v2, 0x1020021

    .line 82
    .line 83
    .line 84
    const v5, 0x1040001

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v4, v2, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/16 v2, 0x63

    .line 92
    .line 93
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->d()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    const v1, 0x104000b

    .line 115
    .line 116
    .line 117
    const v2, 0x1020022

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x6

    .line 121
    invoke-interface {p1, v4, v2, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/16 v2, 0x76

    .line 126
    .line 127
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 140
    .line 141
    .line 142
    :cond_2
    const v1, 0x104000d

    .line 143
    .line 144
    .line 145
    const v2, 0x102001f

    .line 146
    .line 147
    .line 148
    const/4 v5, 0x7

    .line 149
    invoke-interface {p1, v4, v2, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/16 v2, 0x61

    .line 154
    .line 155
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_3

    .line 164
    .line 165
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 170
    .line 171
    iget v5, v5, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 172
    .line 173
    if-eq v2, v5, :cond_4

    .line 174
    .line 175
    :cond_3
    const/4 v3, 0x1

    .line 176
    :cond_4
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 189
    .line 190
    .line 191
    if-le v8, v9, :cond_5

    .line 192
    .line 193
    const v1, 0x7f0c00c6

    .line 194
    .line 195
    .line 196
    const v2, 0x1020035

    .line 197
    .line 198
    .line 199
    const/16 v3, 0x8

    .line 200
    .line 201
    invoke-interface {p1, v6, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 218
    .line 219
    .line 220
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->b:I

    .line 7
    .line 8
    div-int/lit8 v4, v3, 0x2

    .line 9
    .line 10
    sub-int/2addr v2, v4

    .line 11
    const/4 v4, 0x1

    .line 12
    aget v5, v0, v4

    .line 13
    .line 14
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 15
    .line 16
    invoke-virtual {v6}, Lc1/e;->c()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    sub-int/2addr v5, v7

    .line 21
    aget v7, v0, v1

    .line 22
    .line 23
    add-int/2addr v7, v3

    .line 24
    aget v0, v0, v4

    .line 25
    .line 26
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->p:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v3, v2, v5, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 32
    .line 33
    iget-boolean v2, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    int-to-float v8, v2

    .line 40
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    int-to-float v9, v2

    .line 43
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    int-to-float v10, v2

    .line 46
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    int-to-float v11, v2

    .line 49
    iget-object v12, v6, Lc1/e;->a:Landroid/graphics/Paint;

    .line 50
    .line 51
    const/16 v2, 0xa

    .line 52
    .line 53
    invoke-virtual {v6, v2}, Lc1/e;->b(B)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    iput-byte v2, v6, Lc1/e;->b:B

    .line 61
    .line 62
    move-object v7, p1

    .line 63
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->v:I

    .line 71
    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    int-to-float v3, v3

    .line 84
    invoke-virtual {p1, v2, v3}, Lc1/d;->b(FF)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-boolean p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-boolean p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->b:Z

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iput-boolean v4, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 96
    .line 97
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 98
    .line 99
    iget-object p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->d:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 100
    .line 101
    const-wide/16 v1, 0x1f4

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Lru/zdevs/zarchiver/ui/editor/b$d;IIIIIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    if-lt v4, v5, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v8, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v6, v10, :cond_a

    if-gt v6, v5, :cond_a

    if-lt v7, v4, :cond_a

    .line 2
    iget-object v12, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    if-lt v6, v4, :cond_4

    if-le v6, v4, :cond_1

    sub-int v13, v6, v4

    .line 3
    invoke-virtual {v1, v8, v4, v13}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    move-result v13

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    and-int/lit8 v14, p10, 0x1

    if-ne v14, v9, :cond_3

    add-int v14, v2, v13

    .line 4
    aput v14, v12, v11

    .line 5
    iget v14, v8, Lc1/e;->c:I

    if-nez v14, :cond_2

    .line 6
    invoke-virtual {v8}, Lc1/e;->c()I

    .line 7
    :cond_2
    iget v14, v8, Lc1/e;->d:I

    add-int/2addr v14, v3

    .line 8
    aput v14, v12, v9

    :cond_3
    if-ne v7, v6, :cond_5

    .line 9
    invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->f(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :cond_5
    :goto_1
    if-eq v7, v6, :cond_9

    if-lt v5, v7, :cond_8

    if-le v5, v7, :cond_6

    sub-int v6, v7, v4

    .line 10
    invoke-virtual {v1, v8, v4, v6}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    move-result v6

    goto :goto_2

    :cond_6
    move/from16 v6, p11

    :goto_2
    const/4 v7, 0x2

    and-int/lit8 v14, p10, 0x2

    if-ne v14, v7, :cond_b

    add-int v14, v2, v6

    .line 11
    aput v14, v12, v7

    .line 12
    iget v7, v8, Lc1/e;->c:I

    if-nez v7, :cond_7

    .line 13
    invoke-virtual {v8}, Lc1/e;->c()I

    .line 14
    :cond_7
    iget v7, v8, Lc1/e;->d:I

    add-int/2addr v7, v3

    const/4 v14, 0x3

    .line 15
    aput v7, v12, v14

    goto :goto_3

    :cond_8
    move/from16 v6, p11

    goto :goto_3

    :cond_9
    const/4 v6, -0x1

    goto :goto_3

    :cond_a
    const/4 v6, -0x1

    const/4 v13, -0x1

    :cond_b
    :goto_3
    const/16 v7, 0x9

    if-eq v6, v10, :cond_f

    add-int v12, v2, v13

    int-to-float v14, v12

    .line 16
    iget v12, v8, Lc1/e;->c:I

    if-nez v12, :cond_c

    .line 17
    invoke-virtual {v8}, Lc1/e;->c()I

    .line 18
    :cond_c
    iget v12, v8, Lc1/e;->c:I

    add-int/2addr v12, v3

    int-to-float v15, v12

    add-int/2addr v6, v2

    int-to-float v6, v6

    .line 19
    iget v12, v8, Lc1/e;->c:I

    if-nez v12, :cond_d

    .line 20
    invoke-virtual {v8}, Lc1/e;->c()I

    .line 21
    :cond_d
    iget v12, v8, Lc1/e;->d:I

    add-int/2addr v12, v3

    int-to-float v12, v12

    .line 22
    iget-byte v13, v8, Lc1/e;->b:B

    iget-object v9, v8, Lc1/e;->a:Landroid/graphics/Paint;

    if-eq v7, v13, :cond_e

    .line 23
    invoke-virtual {v8, v7}, Lc1/e;->b(B)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iput-byte v7, v8, Lc1/e;->b:B

    :cond_e
    move-object/from16 v13, p1

    move/from16 v16, v6

    move/from16 v17, v12

    move-object/from16 v18, v9

    .line 25
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    :cond_f
    iget-object v6, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    iget-object v6, v6, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 27
    iget-object v9, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 28
    aget-char v12, v9, v4

    if-ne v12, v7, :cond_10

    goto :goto_5

    :cond_10
    sub-int v7, v5, v4

    if-lez v5, :cond_11

    add-int/2addr v5, v10

    .line 29
    aget-char v5, v9, v5

    const/16 v10, 0xa

    if-ne v5, v10, :cond_11

    const/16 v19, 0x1

    goto :goto_4

    :cond_11
    const/16 v19, 0x0

    :goto_4
    sub-int v5, v7, v19

    .line 30
    iget-object v7, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->i:[B

    if-eqz v7, :cond_12

    if-eqz v6, :cond_12

    .line 31
    aget-byte v11, v7, p3

    if-nez v11, :cond_12

    .line 32
    iget-object v10, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    aget v11, v10, p3

    const v12, 0x7fffff

    and-int/2addr v11, v12

    add-int/lit8 v13, p3, 0x1

    aget v10, v10, v13

    and-int/2addr v10, v12

    invoke-virtual {v6, v9, v11, v10}, Ld1/b;->f([CII)B

    move-result v11

    aput-byte v11, v7, p3

    .line 33
    :cond_12
    iget-object v6, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    int-to-float v7, v2

    int-to-float v9, v3

    and-int/lit8 v1, v11, 0xf

    int-to-byte v1, v1

    .line 34
    iget-byte v2, v8, Lc1/e;->b:B

    iget-object v10, v8, Lc1/e;->a:Landroid/graphics/Paint;

    if-eq v1, v2, :cond_13

    .line 35
    invoke-virtual {v8, v1}, Lc1/e;->b(B)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iput-byte v1, v8, Lc1/e;->b:B

    :cond_13
    move-object/from16 v1, p1

    move-object v2, v6

    move/from16 v3, p6

    move v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    .line 37
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_5
    return-void
.end method

.method public getEditable()Lru/zdevs/zarchiver/ui/editor/b;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    return-object v0
.end method

.method public getInputConnection()Lc1/b;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    return-object v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->h:Landroid/text/method/TextKeyListener;

    return-object v0
.end method

.method public getLineHeight()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    invoke-virtual {v0}, Lc1/e;->c()I

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 18
    .line 19
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v2, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSyntax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ld1/b;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    return v0
.end method

.method public final h(FF)I
    .locals 13

    .line 1
    float-to-int p2, p2

    .line 2
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 3
    .line 4
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 5
    .line 6
    invoke-virtual {v0, p2, v1}, Lru/zdevs/zarchiver/ui/editor/b;->g(I[I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v2, 0x0

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iget-object p1, v0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    iget p2, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 35
    .line 36
    iget v0, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 37
    .line 38
    add-int/2addr p2, v0

    .line 39
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 40
    .line 41
    and-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    sub-int/2addr p2, p1

    .line 44
    return p2

    .line 45
    :cond_1
    iget v0, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 46
    .line 47
    iget v3, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 48
    .line 49
    and-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    if-ge v0, v3, :cond_2

    .line 54
    .line 55
    iget p1, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_2
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    int-to-float v3, v0

    .line 67
    cmpl-float v4, p1, v3

    .line 68
    .line 69
    if-lez v4, :cond_3

    .line 70
    .line 71
    sub-float/2addr p1, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    :cond_4
    :goto_0
    iget v3, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 75
    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    iget-boolean v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 79
    .line 80
    const v5, 0x7fffff

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 84
    .line 85
    if-eqz v4, :cond_f

    .line 86
    .line 87
    invoke-virtual {v6}, Lc1/e;->c()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    sub-int/2addr v7, v0

    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    :goto_1
    if-ge v0, v3, :cond_e

    .line 100
    .line 101
    invoke-virtual {p2, v6, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    add-int v11, v9, v10

    .line 106
    .line 107
    if-le v11, v7, :cond_a

    .line 108
    .line 109
    if-eqz v9, :cond_6

    .line 110
    .line 111
    if-ge v1, v4, :cond_5

    .line 112
    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    goto :goto_4

    .line 120
    :cond_5
    sub-int/2addr v1, v4

    .line 121
    const/4 v9, 0x0

    .line 122
    :cond_6
    if-le v10, v7, :cond_a

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    invoke-virtual {p2, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    :goto_2
    int-to-float v10, v7

    .line 133
    invoke-virtual {p2, v6, v9, v11, v10}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-lt v10, v11, :cond_7

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    if-ge v1, v4, :cond_9

    .line 141
    .line 142
    invoke-virtual {p2, v6, v9, v10, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    :goto_3
    sub-int v10, v11, v9

    .line 147
    .line 148
    invoke-virtual {p2, v6, v9, v10}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-ge v1, v4, :cond_8

    .line 153
    .line 154
    int-to-float v12, v10

    .line 155
    cmpg-float v12, p1, v12

    .line 156
    .line 157
    if-gez v12, :cond_8

    .line 158
    .line 159
    invoke-virtual {p2, v6, v9, v11, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    move v9, v10

    .line 165
    goto :goto_5

    .line 166
    :cond_9
    sub-int/2addr v1, v4

    .line 167
    move v9, v10

    .line 168
    goto :goto_2

    .line 169
    :cond_a
    if-ge v1, v4, :cond_b

    .line 170
    .line 171
    int-to-float v11, v9

    .line 172
    cmpg-float v11, v11, p1

    .line 173
    .line 174
    if-gtz v11, :cond_b

    .line 175
    .line 176
    add-int v11, v9, v10

    .line 177
    .line 178
    int-to-float v11, v11

    .line 179
    cmpg-float v11, p1, v11

    .line 180
    .line 181
    if-ltz v11, :cond_c

    .line 182
    .line 183
    :cond_b
    add-int/lit8 v11, v0, 0x1

    .line 184
    .line 185
    if-ne v11, v3, :cond_d

    .line 186
    .line 187
    :cond_c
    int-to-float v1, v9

    .line 188
    sub-float/2addr p1, v1

    .line 189
    iget-object v1, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    .line 190
    .line 191
    aget v2, v1, v0

    .line 192
    .line 193
    and-int/2addr v2, v5

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 195
    .line 196
    aget v0, v1, v0

    .line 197
    .line 198
    and-int/2addr v0, v5

    .line 199
    invoke-virtual {p2, v6, v2, v0, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    :goto_4
    move v2, p1

    .line 204
    goto :goto_7

    .line 205
    :cond_d
    add-int/2addr v9, v10

    .line 206
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_e
    move v2, v8

    .line 210
    goto :goto_7

    .line 211
    :cond_f
    const/4 v0, 0x0

    .line 212
    const/4 v1, 0x0

    .line 213
    :goto_6
    if-ge v0, v3, :cond_13

    .line 214
    .line 215
    invoke-virtual {p2, v6, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    int-to-float v7, v1

    .line 220
    cmpg-float v8, v7, p1

    .line 221
    .line 222
    if-gtz v8, :cond_10

    .line 223
    .line 224
    add-int v8, v1, v4

    .line 225
    .line 226
    int-to-float v8, v8

    .line 227
    cmpg-float v8, p1, v8

    .line 228
    .line 229
    if-ltz v8, :cond_11

    .line 230
    .line 231
    :cond_10
    add-int/lit8 v8, v0, 0x1

    .line 232
    .line 233
    if-ne v8, v3, :cond_12

    .line 234
    .line 235
    :cond_11
    sub-float/2addr p1, v7

    .line 236
    iget-object v1, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    .line 237
    .line 238
    aget v2, v1, v0

    .line 239
    .line 240
    and-int/2addr v2, v5

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    aget v0, v1, v0

    .line 244
    .line 245
    and-int/2addr v0, v5

    .line 246
    invoke-virtual {p2, v6, v2, v0, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    goto :goto_7

    .line 251
    :cond_12
    add-int/2addr v1, v4

    .line 252
    move v0, v8

    .line 253
    goto :goto_6

    .line 254
    :cond_13
    :goto_7
    iget p1, p2, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 255
    .line 256
    add-int/2addr p1, v2

    .line 257
    return p1
.end method

.method public final i(I[I)[I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v2, p2

    .line 12
    .line 13
    :goto_0
    iget-object v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v4, v3, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x1

    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v8, :cond_2

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 38
    .line 39
    invoke-virtual {v8, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->d(I)Z

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-eqz v11, :cond_1

    .line 44
    .line 45
    aput v6, v2, v5

    .line 46
    .line 47
    aput v7, v2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v3

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    :try_start_1
    iget v8, v8, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    add-int/2addr v7, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    monitor-exit v3

    .line 58
    move-object v8, v10

    .line 59
    :goto_2
    if-nez v8, :cond_3

    .line 60
    .line 61
    return-object v10

    .line 62
    :cond_3
    iget v3, v8, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 63
    .line 64
    sub-int/2addr v0, v3

    .line 65
    invoke-direct/range {p0 .. p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    aget v4, v2, v9

    .line 70
    .line 71
    iget v6, v8, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 72
    .line 73
    add-int/lit8 v6, v6, -0x1

    .line 74
    .line 75
    iget-boolean v7, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 76
    .line 77
    if-eqz v7, :cond_9

    .line 78
    .line 79
    iget-object v7, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 80
    .line 81
    invoke-virtual {v7}, Lc1/e;->c()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    sub-int/2addr v10, v3

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_3
    if-ge v11, v6, :cond_8

    .line 94
    .line 95
    if-nez v12, :cond_8

    .line 96
    .line 97
    invoke-virtual {v8, v0, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->e(II)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    invoke-virtual {v8, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-eqz v12, :cond_4

    .line 106
    .line 107
    iget-object v15, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 108
    .line 109
    sub-int v9, v0, v14

    .line 110
    .line 111
    invoke-virtual {v8, v15, v14, v9}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    move v15, v0

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    invoke-virtual {v8, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    iget-object v15, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 122
    .line 123
    invoke-virtual {v8, v15, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    move/from16 v16, v15

    .line 128
    .line 129
    move v15, v9

    .line 130
    move/from16 v9, v16

    .line 131
    .line 132
    :goto_4
    add-int v5, v13, v9

    .line 133
    .line 134
    if-le v5, v10, :cond_7

    .line 135
    .line 136
    if-lez v13, :cond_5

    .line 137
    .line 138
    add-int/2addr v4, v7

    .line 139
    const/4 v13, 0x0

    .line 140
    :cond_5
    if-le v9, v10, :cond_7

    .line 141
    .line 142
    :goto_5
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 143
    .line 144
    int-to-float v9, v10

    .line 145
    invoke-virtual {v8, v5, v14, v15, v9}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-lt v5, v15, :cond_6

    .line 150
    .line 151
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 152
    .line 153
    sub-int/2addr v15, v14

    .line 154
    invoke-virtual {v8, v5, v14, v15}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    add-int/2addr v5, v13

    .line 159
    move v13, v5

    .line 160
    goto :goto_6

    .line 161
    :cond_6
    add-int/2addr v4, v7

    .line 162
    move v14, v5

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    add-int/2addr v13, v9

    .line 165
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v9, 0x1

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    add-int/2addr v3, v13

    .line 171
    goto :goto_8

    .line 172
    :cond_9
    const/4 v5, 0x0

    .line 173
    :goto_7
    if-ge v5, v6, :cond_b

    .line 174
    .line 175
    invoke-virtual {v8, v0, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->e(II)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_a

    .line 180
    .line 181
    invoke-virtual {v8, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iget-object v6, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 186
    .line 187
    sub-int/2addr v0, v5

    .line 188
    invoke-virtual {v8, v6, v5, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    add-int/2addr v3, v0

    .line 193
    goto :goto_8

    .line 194
    :cond_a
    iget-object v7, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 195
    .line 196
    invoke-virtual {v8, v7, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    add-int/2addr v3, v7

    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_b
    :goto_8
    const/4 v0, 0x0

    .line 205
    aput v3, v2, v0

    .line 206
    .line 207
    const/4 v0, 0x1

    .line 208
    aput v4, v2, v0

    .line 209
    .line 210
    return-object v2

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    monitor-exit v3

    .line 213
    goto :goto_a

    .line 214
    :goto_9
    throw v0

    .line 215
    :goto_a
    goto :goto_9
.end method

.method public final j()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v2, v0, v1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aget v0, v0, v3

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    :cond_0
    if-ltz v2, :cond_1

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    if-eq v2, v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
.end method

.method public final k(I)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, -0x3

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, -0x2

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, -0x1

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    int-to-long v1, p1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->e()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final m(Lru/zdevs/zarchiver/ui/editor/b$d;)V
    .locals 10

    .line 1
    iget v0, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 6
    .line 7
    invoke-virtual {v1}, Lc1/e;->c()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sub-int/2addr v3, v5

    .line 25
    if-gtz v3, :cond_0

    .line 26
    .line 27
    iput v4, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->f:I

    .line 28
    .line 29
    iput v4, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    :goto_0
    if-ge v5, v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1, v1, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    add-int v9, v7, v8

    .line 42
    .line 43
    if-le v9, v3, :cond_3

    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    add-int/2addr v6, v2

    .line 48
    const/4 v7, 0x0

    .line 49
    :cond_1
    if-le v8, v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    :goto_1
    int-to-float v8, v3

    .line 60
    invoke-virtual {p1, v1, v7, v9, v8}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-lt v8, v9, :cond_2

    .line 65
    .line 66
    sub-int/2addr v9, v7

    .line 67
    invoke-virtual {p1, v1, v7, v9}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    add-int/2addr v6, v2

    .line 73
    move v7, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/2addr v7, v8

    .line 76
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    add-int/2addr v2, v6

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    const/4 v3, 0x0

    .line 82
    :goto_3
    if-ge v4, v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1, v1, v4}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    add-int/2addr v3, v5

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    :goto_4
    iput v3, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->f:I

    .line 93
    .line 94
    iput v2, p1, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 95
    .line 96
    return-void
.end method

.method public final n(I)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    and-int/2addr v0, p1

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 17
    .line 18
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v5, v0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_2

    .line 34
    .line 35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 40
    .line 41
    iget v9, v8, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 42
    .line 43
    add-int/2addr v7, v9

    .line 44
    iget v8, v8, Lru/zdevs/zarchiver/ui/editor/b$d;->f:I

    .line 45
    .line 46
    if-le v8, v6, :cond_1

    .line 47
    .line 48
    move v6, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    aput v6, v4, v2

    .line 51
    .line 52
    aput v7, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 56
    .line 57
    aget v4, v0, v2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v4, v5

    .line 64
    aput v4, v0, v2

    .line 65
    .line 66
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 67
    .line 68
    aget v4, v0, v2

    .line 69
    .line 70
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/2addr v4, v5

    .line 75
    aput v4, v0, v2

    .line 76
    .line 77
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 78
    .line 79
    aget v4, v0, v2

    .line 80
    .line 81
    if-gez v4, :cond_3

    .line 82
    .line 83
    aput v2, v0, v2

    .line 84
    .line 85
    :cond_3
    aget v4, v0, v3

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-int/2addr v4, v5

    .line 92
    aput v4, v0, v3

    .line 93
    .line 94
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 95
    .line 96
    aget v4, v0, v3

    .line 97
    .line 98
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 99
    .line 100
    invoke-virtual {v5}, Lc1/e;->c()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    div-int/2addr v5, v1

    .line 105
    add-int/2addr v5, v4

    .line 106
    aput v5, v0, v3

    .line 107
    .line 108
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 109
    .line 110
    aget v4, v0, v3

    .line 111
    .line 112
    if-gez v4, :cond_4

    .line 113
    .line 114
    aput v2, v0, v3

    .line 115
    .line 116
    :cond_4
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    aget v5, v0, v2

    .line 122
    .line 123
    iput v5, v4, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 124
    .line 125
    aget v0, v0, v3

    .line 126
    .line 127
    iput v0, v4, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 128
    .line 129
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iget v5, v4, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 134
    .line 135
    if-le v0, v5, :cond_5

    .line 136
    .line 137
    iget-object v6, v4, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 138
    .line 139
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    const/4 v9, 0x0

    .line 148
    iget v0, v4, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 149
    .line 150
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    sub-int v10, v0, v5

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 161
    .line 162
    invoke-interface {v0}, Lc1/a;->invalidate()V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    monitor-exit v0

    .line 168
    throw p1

    .line 169
    :cond_5
    :goto_2
    and-int/lit8 v0, p1, 0x40

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 177
    .line 178
    const/4 v4, 0x3

    .line 179
    invoke-virtual {v0, v4}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    and-int/lit16 v0, p1, 0x100

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 187
    .line 188
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 189
    .line 190
    aget v4, v0, v2

    .line 191
    .line 192
    aget v0, v0, v3

    .line 193
    .line 194
    const/4 v5, -0x1

    .line 195
    if-ne v0, v4, :cond_7

    .line 196
    .line 197
    const/4 v0, -0x1

    .line 198
    :cond_7
    if-eq v0, v5, :cond_8

    .line 199
    .line 200
    and-int/lit16 v5, p1, 0x200

    .line 201
    .line 202
    if-eqz v5, :cond_8

    .line 203
    .line 204
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 205
    .line 206
    invoke-virtual {p0, v0, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->i(I[I)[I

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    goto :goto_3

    .line 211
    :cond_8
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 212
    .line 213
    invoke-virtual {p0, v4, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->i(I[I)[I

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_3
    if-eqz v0, :cond_e

    .line 218
    .line 219
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 220
    .line 221
    invoke-virtual {v4}, Lc1/e;->c()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    mul-int/lit8 v4, v4, 0x2

    .line 226
    .line 227
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 232
    .line 233
    invoke-virtual {v6}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    iget-object v8, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 242
    .line 243
    invoke-virtual {v8}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    aget v10, v0, v2

    .line 252
    .line 253
    sub-int v11, v10, v4

    .line 254
    .line 255
    add-int v12, v6, v5

    .line 256
    .line 257
    if-ge v11, v12, :cond_9

    .line 258
    .line 259
    sub-int/2addr v11, v5

    .line 260
    goto :goto_4

    .line 261
    :cond_9
    add-int v5, v10, v4

    .line 262
    .line 263
    add-int v11, v6, v7

    .line 264
    .line 265
    if-le v5, v11, :cond_a

    .line 266
    .line 267
    sub-int/2addr v10, v7

    .line 268
    add-int v11, v10, v4

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    move v11, v6

    .line 272
    :goto_4
    aget v0, v0, v3

    .line 273
    .line 274
    sub-int v5, v0, v4

    .line 275
    .line 276
    if-ge v5, v8, :cond_b

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_b
    add-int v5, v0, v4

    .line 280
    .line 281
    add-int v7, v8, v9

    .line 282
    .line 283
    if-le v5, v7, :cond_c

    .line 284
    .line 285
    sub-int/2addr v0, v9

    .line 286
    add-int v5, v0, v4

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_c
    move v5, v8

    .line 290
    :goto_5
    if-ne v8, v5, :cond_d

    .line 291
    .line 292
    if-eq v6, v11, :cond_e

    .line 293
    .line 294
    :cond_d
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 295
    .line 296
    invoke-virtual {v0, v11, v5, v2}, Lru/zdevs/zarchiver/ui/editor/c;->f(IIZ)V

    .line 297
    .line 298
    .line 299
    :cond_e
    and-int/lit8 v0, p1, 0x7

    .line 300
    .line 301
    if-eqz v0, :cond_10

    .line 302
    .line 303
    and-int/lit8 v0, p1, 0x1

    .line 304
    .line 305
    if-eqz v0, :cond_f

    .line 306
    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_6

    .line 309
    :cond_f
    const/4 v0, 0x0

    .line 310
    :goto_6
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->t:Z

    .line 311
    .line 312
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 313
    .line 314
    .line 315
    :cond_10
    and-int/lit8 v0, p1, 0x1

    .line 316
    .line 317
    if-eqz v0, :cond_12

    .line 318
    .line 319
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 320
    .line 321
    sget-object v4, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 322
    .line 323
    invoke-virtual {v0, v4}, Lru/zdevs/zarchiver/ui/editor/b;->getSpanStart(Ljava/lang/Object;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 328
    .line 329
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 330
    .line 331
    invoke-virtual {v4, v5}, Lru/zdevs/zarchiver/ui/editor/b;->getSpanStart(Ljava/lang/Object;)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 336
    .line 337
    invoke-static {v5}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 342
    .line 343
    invoke-static {v5}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 348
    .line 349
    move-object v6, p0

    .line 350
    move v7, v0

    .line 351
    move v8, v4

    .line 352
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 353
    .line 354
    .line 355
    if-ne v0, v4, :cond_12

    .line 356
    .line 357
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 358
    .line 359
    if-eqz v0, :cond_11

    .line 360
    .line 361
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->n:I

    .line 362
    .line 363
    if-nez v0, :cond_11

    .line 364
    .line 365
    const/4 v0, 0x1

    .line 366
    goto :goto_7

    .line 367
    :cond_11
    const/4 v0, 0x0

    .line 368
    :goto_7
    if-eqz v0, :cond_12

    .line 369
    .line 370
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 371
    .line 372
    .line 373
    :cond_12
    and-int/lit8 v0, p1, 0x10

    .line 374
    .line 375
    if-eqz v0, :cond_13

    .line 376
    .line 377
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->j()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_13

    .line 382
    .line 383
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->t(I)V

    .line 384
    .line 385
    .line 386
    :cond_13
    and-int/2addr p1, v1

    .line 387
    if-eqz p1, :cond_15

    .line 388
    .line 389
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->u:Lru/zdevs/zarchiver/ui/editor/EditableView$f;

    .line 390
    .line 391
    if-eqz p1, :cond_15

    .line 392
    .line 393
    check-cast p1, Lru/zdevs/zarchiver/ZTextEditor;

    .line 394
    .line 395
    iget-boolean v0, p1, Lru/zdevs/zarchiver/ZTextEditor;->d:Z

    .line 396
    .line 397
    if-eqz v0, :cond_14

    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_14
    invoke-virtual {p1, v3}, Lru/zdevs/zarchiver/ZTextEditor;->h(Z)V

    .line 401
    .line 402
    .line 403
    :cond_15
    :goto_8
    return-void
.end method

.method public final o(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget v1, v0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :goto_0
    const/4 v2, 0x1

    .line 39
    const v5, 0x1020035

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eq p1, v5, :cond_7

    .line 44
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 v1, 0x1f

    .line 64
    .line 65
    if-lt v0, v1, :cond_1

    .line 66
    .line 67
    new-instance v0, Landroid/view/ContentInfo$Builder;

    .line 68
    .line 69
    invoke-direct {v0, p1, v2}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->p(Landroid/content/ClipData;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {v0, v4, p1}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v6, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :try_start_0
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    :catchall_0
    :cond_3
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 132
    .line 133
    .line 134
    :cond_4
    return v2

    .line 135
    :pswitch_2
    invoke-virtual {v0, v4, v1}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v6, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :try_start_1
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_5

    .line 148
    .line 149
    invoke-virtual {v5, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    :catchall_1
    :cond_5
    if-eqz v3, :cond_6

    .line 154
    .line 155
    invoke-virtual {v0, v4, v1}, Lru/zdevs/zarchiver/ui/editor/b;->delete(II)Landroid/text/Editable;

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 159
    .line 160
    .line 161
    return v2

    .line 162
    :pswitch_3
    const/16 p1, 0x1f4

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 165
    .line 166
    .line 167
    iget p1, v0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 168
    .line 169
    invoke-static {v0, v3, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :cond_7
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectedText()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_9

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_9

    .line 184
    .line 185
    new-instance v1, Landroid/content/Intent;

    .line 186
    .line 187
    const-string v4, "android.intent.action.SEND"

    .line 188
    .line 189
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v4, "text/plain"

    .line 193
    .line 194
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    const v5, 0x186a0

    .line 202
    .line 203
    .line 204
    if-le v4, v5, :cond_8

    .line 205
    .line 206
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :cond_8
    const-string v3, "android.intent.extra.TEXT"

    .line 211
    .line 212
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 231
    .line 232
    .line 233
    :cond_9
    return v2

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->e(Landroid/view/Menu;)V

    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->getSpanStart(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 10
    .line 11
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->getSpanStart(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 18
    .line 19
    const v0, 0x20001

    .line 20
    .line 21
    .line 22
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 23
    .line 24
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 25
    .line 26
    const v1, 0x40000001    # 2.0000002f

    .line 27
    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 31
    .line 32
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 33
    .line 34
    return-object p1
.end method

.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_7

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x5

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v0, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->h(FF)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;

    .line 41
    .line 42
    iget-object v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 43
    .line 44
    if-ne v3, p0, :cond_2

    .line 45
    .line 46
    iget v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;->b:I

    .line 47
    .line 48
    if-lt v0, v3, :cond_3

    .line 49
    .line 50
    iget v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;->c:I

    .line 51
    .line 52
    if-gt v0, v3, :cond_3

    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :cond_3
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 57
    .line 58
    iget v4, v3, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 59
    .line 60
    if-le v0, v4, :cond_4

    .line 61
    .line 62
    move v0, v4

    .line 63
    :cond_4
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 64
    .line 65
    invoke-virtual {v4}, Lc1/b;->beginBatchEdit()Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->r(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->p(Landroid/content/ClipData;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    iget v5, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;->c:I

    .line 82
    .line 83
    if-lt v0, v5, :cond_5

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    :cond_5
    iget v0, v1, Lru/zdevs/zarchiver/ui/editor/EditableView$e;->b:I

    .line 87
    .line 88
    add-int/2addr v0, p1

    .line 89
    add-int/2addr v5, p1

    .line 90
    invoke-virtual {v3, v0, v5}, Lru/zdevs/zarchiver/ui/editor/b;->delete(II)Landroid/text/Editable;

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {v4}, Lc1/b;->endBatchEdit()Z

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :cond_7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->h(FF)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->r(II)V

    .line 110
    .line 111
    .line 112
    return v2
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 42

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v14

    .line 12
    if-gtz v14, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v15, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 16
    .line 17
    invoke-virtual {v15}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 18
    .line 19
    .line 20
    move-result v16

    .line 21
    invoke-virtual {v15}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v11, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 26
    .line 27
    iget-object v1, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->c:[I

    .line 28
    .line 29
    invoke-virtual {v11, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->g(I[I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v10, 0x0

    .line 34
    aget v0, v1, v10

    .line 35
    .line 36
    neg-int v7, v0

    .line 37
    iget-object v0, v11, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    invoke-direct/range {p0 .. p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineNumberWidth()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v5, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 48
    .line 49
    invoke-virtual {v5}, Lc1/e;->c()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget-object v0, v11, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 54
    .line 55
    aget v3, v0, v10

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aget v0, v0, v2

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    if-ne v0, v3, :cond_1

    .line 62
    .line 63
    const/4 v0, -0x1

    .line 64
    :cond_1
    iget-object v10, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 65
    .line 66
    if-eq v0, v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v10}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v2, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 72
    .line 73
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 74
    .line 75
    .line 76
    iget-boolean v1, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 77
    .line 78
    move-object/from16 v20, v2

    .line 79
    .line 80
    const/16 v2, 0x9

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    .line 86
    .line 87
    iget-object v1, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->l:Landroid/graphics/Paint;

    .line 88
    .line 89
    move/from16 v21, v0

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Lc1/e;->b(B)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0x32

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    .line 102
    .line 103
    iget v0, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->a:I

    .line 104
    .line 105
    mul-int/lit8 v0, v0, 0x4

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    sub-int v2, v8, v0

    .line 112
    .line 113
    int-to-float v2, v2

    .line 114
    move/from16 v25, v0

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    int-to-float v0, v0

    .line 121
    move/from16 v27, v21

    .line 122
    .line 123
    move/from16 v26, v25

    .line 124
    .line 125
    move/from16 v21, v0

    .line 126
    .line 127
    move-object/from16 v0, p1

    .line 128
    .line 129
    move-object/from16 v19, v1

    .line 130
    .line 131
    move-object/from16 v25, v15

    .line 132
    .line 133
    const/4 v15, -0x1

    .line 134
    move/from16 v1, v22

    .line 135
    .line 136
    move/from16 v18, v2

    .line 137
    .line 138
    move/from16 v2, v23

    .line 139
    .line 140
    move/from16 v30, v3

    .line 141
    .line 142
    move/from16 v3, v18

    .line 143
    .line 144
    move v15, v4

    .line 145
    move/from16 v4, v21

    .line 146
    .line 147
    move-object/from16 v21, v10

    .line 148
    .line 149
    move-object v10, v5

    .line 150
    move-object/from16 v5, v19

    .line 151
    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v0, v19

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v1}, Lc1/e;->b(B)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    .line 167
    .line 168
    move v1, v6

    .line 169
    move v2, v7

    .line 170
    :goto_0
    if-ge v1, v9, :cond_4

    .line 171
    .line 172
    invoke-virtual {v11, v1}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-nez v3, :cond_3

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-ge v2, v4, :cond_4

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    move/from16 v19, v1

    .line 192
    .line 193
    move/from16 v5, v26

    .line 194
    .line 195
    int-to-float v1, v5

    .line 196
    add-int v5, v2, v15

    .line 197
    .line 198
    int-to-float v5, v5

    .line 199
    invoke-virtual {v13, v4, v1, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    .line 201
    .line 202
    iget v1, v3, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 203
    .line 204
    add-int/2addr v2, v1

    .line 205
    move/from16 v1, v19

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_4
    :goto_1
    add-int/lit8 v0, v8, -0x1

    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-virtual {v13, v0, v5, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_5
    move/from16 v27, v0

    .line 224
    .line 225
    move/from16 v30, v3

    .line 226
    .line 227
    move-object/from16 v21, v10

    .line 228
    .line 229
    move-object/from16 v25, v15

    .line 230
    .line 231
    move v15, v4

    .line 232
    move-object v10, v5

    .line 233
    const/4 v5, 0x0

    .line 234
    :goto_2
    add-int/2addr v7, v15

    .line 235
    move/from16 v41, v7

    .line 236
    .line 237
    move v7, v6

    .line 238
    move/from16 v6, v41

    .line 239
    .line 240
    :goto_3
    if-ge v7, v9, :cond_1f

    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    add-int/2addr v0, v15

    .line 247
    if-lt v6, v0, :cond_6

    .line 248
    .line 249
    goto/16 :goto_12

    .line 250
    .line 251
    :cond_6
    invoke-virtual {v11, v7}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-nez v4, :cond_7

    .line 256
    .line 257
    goto/16 :goto_12

    .line 258
    .line 259
    :cond_7
    move/from16 v3, v30

    .line 260
    .line 261
    const/4 v0, -0x1

    .line 262
    if-eq v3, v0, :cond_f

    .line 263
    .line 264
    move/from16 v2, v27

    .line 265
    .line 266
    if-ne v2, v0, :cond_9

    .line 267
    .line 268
    invoke-virtual {v4, v3}, Lru/zdevs/zarchiver/ui/editor/b$d;->d(I)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_8

    .line 273
    .line 274
    iget v0, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 275
    .line 276
    sub-int v1, v3, v0

    .line 277
    .line 278
    move v5, v1

    .line 279
    move/from16 v19, v6

    .line 280
    .line 281
    const/4 v13, 0x1

    .line 282
    const/16 v28, 0x1

    .line 283
    .line 284
    move v6, v5

    .line 285
    goto :goto_8

    .line 286
    :cond_8
    move/from16 v19, v6

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_9
    invoke-virtual {v4, v3}, Lru/zdevs/zarchiver/ui/editor/b$d;->d(I)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iget v1, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 294
    .line 295
    if-lt v2, v1, :cond_a

    .line 296
    .line 297
    iget v5, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 298
    .line 299
    add-int/2addr v5, v1

    .line 300
    move/from16 v19, v6

    .line 301
    .line 302
    iget v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 303
    .line 304
    const/4 v13, 0x1

    .line 305
    and-int/2addr v6, v13

    .line 306
    add-int/2addr v5, v6

    .line 307
    if-ge v2, v5, :cond_b

    .line 308
    .line 309
    const/4 v5, 0x1

    .line 310
    goto :goto_4

    .line 311
    :cond_a
    move/from16 v19, v6

    .line 312
    .line 313
    const/4 v13, 0x1

    .line 314
    :cond_b
    const/4 v5, 0x0

    .line 315
    :goto_4
    if-nez v0, :cond_c

    .line 316
    .line 317
    if-nez v5, :cond_c

    .line 318
    .line 319
    if-ge v3, v1, :cond_10

    .line 320
    .line 321
    if-ge v1, v2, :cond_10

    .line 322
    .line 323
    :cond_c
    if-eqz v0, :cond_d

    .line 324
    .line 325
    sub-int v0, v3, v1

    .line 326
    .line 327
    const/4 v6, 0x1

    .line 328
    goto :goto_5

    .line 329
    :cond_d
    const/4 v0, 0x0

    .line 330
    const/4 v6, 0x0

    .line 331
    :goto_5
    if-eqz v5, :cond_e

    .line 332
    .line 333
    sub-int v1, v2, v1

    .line 334
    .line 335
    or-int/lit8 v5, v6, 0x2

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_e
    iget v1, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 339
    .line 340
    move v5, v6

    .line 341
    :goto_6
    move v6, v1

    .line 342
    move/from16 v28, v5

    .line 343
    .line 344
    move v5, v0

    .line 345
    goto :goto_8

    .line 346
    :cond_f
    move/from16 v19, v6

    .line 347
    .line 348
    move/from16 v2, v27

    .line 349
    .line 350
    :goto_7
    const/4 v13, 0x1

    .line 351
    :cond_10
    const/4 v5, -0x1

    .line 352
    const/4 v6, -0x1

    .line 353
    const/16 v28, 0x0

    .line 354
    .line 355
    :goto_8
    iget v0, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 356
    .line 357
    const/4 v1, -0x1

    .line 358
    add-int/2addr v0, v1

    .line 359
    move v13, v8

    .line 360
    move/from16 v23, v19

    .line 361
    .line 362
    const/4 v1, 0x0

    .line 363
    :goto_9
    if-ge v1, v0, :cond_1e

    .line 364
    .line 365
    move-object/from16 v24, v11

    .line 366
    .line 367
    invoke-virtual {v4, v10, v1}, Lru/zdevs/zarchiver/ui/editor/b$d;->g(Lc1/e;I)I

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    move/from16 v26, v0

    .line 372
    .line 373
    iget-boolean v0, v12, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 374
    .line 375
    if-eqz v0, :cond_1c

    .line 376
    .line 377
    invoke-virtual {v4, v1}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-virtual {v4, v1}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    move/from16 v27, v1

    .line 386
    .line 387
    add-int v1, v13, v11

    .line 388
    .line 389
    if-le v1, v14, :cond_18

    .line 390
    .line 391
    if-le v13, v8, :cond_15

    .line 392
    .line 393
    if-ge v5, v0, :cond_14

    .line 394
    .line 395
    if-lt v6, v0, :cond_14

    .line 396
    .line 397
    int-to-float v1, v13

    .line 398
    iget v13, v10, Lc1/e;->c:I

    .line 399
    .line 400
    if-nez v13, :cond_11

    .line 401
    .line 402
    invoke-virtual {v10}, Lc1/e;->c()I

    .line 403
    .line 404
    .line 405
    :cond_11
    iget v13, v10, Lc1/e;->c:I

    .line 406
    .line 407
    add-int v13, v13, v23

    .line 408
    .line 409
    int-to-float v13, v13

    .line 410
    move/from16 v30, v3

    .line 411
    .line 412
    int-to-float v3, v14

    .line 413
    move/from16 v31, v0

    .line 414
    .line 415
    iget v0, v10, Lc1/e;->c:I

    .line 416
    .line 417
    if-nez v0, :cond_12

    .line 418
    .line 419
    invoke-virtual {v10}, Lc1/e;->c()I

    .line 420
    .line 421
    .line 422
    :cond_12
    iget v0, v10, Lc1/e;->d:I

    .line 423
    .line 424
    add-int v0, v0, v23

    .line 425
    .line 426
    int-to-float v0, v0

    .line 427
    move/from16 v32, v0

    .line 428
    .line 429
    iget-byte v0, v10, Lc1/e;->b:B

    .line 430
    .line 431
    move/from16 v33, v5

    .line 432
    .line 433
    iget-object v5, v10, Lc1/e;->a:Landroid/graphics/Paint;

    .line 434
    .line 435
    move/from16 v34, v9

    .line 436
    .line 437
    const/16 v9, 0x9

    .line 438
    .line 439
    if-eq v9, v0, :cond_13

    .line 440
    .line 441
    invoke-virtual {v10, v9}, Lc1/e;->b(B)I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    .line 447
    .line 448
    iput-byte v9, v10, Lc1/e;->b:B

    .line 449
    .line 450
    :cond_13
    move/from16 v29, v31

    .line 451
    .line 452
    move/from16 v31, v32

    .line 453
    .line 454
    move-object/from16 v0, p1

    .line 455
    .line 456
    move/from16 v32, v27

    .line 457
    .line 458
    move/from16 v27, v2

    .line 459
    .line 460
    move v2, v13

    .line 461
    move/from16 v13, v30

    .line 462
    .line 463
    move-object v13, v4

    .line 464
    move/from16 v4, v31

    .line 465
    .line 466
    move/from16 v17, v33

    .line 467
    .line 468
    const/16 v31, 0x0

    .line 469
    .line 470
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 471
    .line 472
    .line 473
    goto :goto_a

    .line 474
    :cond_14
    move/from16 v29, v0

    .line 475
    .line 476
    move/from16 v30, v3

    .line 477
    .line 478
    move-object v13, v4

    .line 479
    move/from16 v17, v5

    .line 480
    .line 481
    move/from16 v34, v9

    .line 482
    .line 483
    move/from16 v32, v27

    .line 484
    .line 485
    const/16 v9, 0x9

    .line 486
    .line 487
    const/16 v31, 0x0

    .line 488
    .line 489
    move/from16 v27, v2

    .line 490
    .line 491
    :goto_a
    add-int v23, v23, v15

    .line 492
    .line 493
    move/from16 v5, v30

    .line 494
    .line 495
    move/from16 v30, v8

    .line 496
    .line 497
    goto :goto_b

    .line 498
    :cond_15
    move/from16 v29, v0

    .line 499
    .line 500
    move/from16 v17, v5

    .line 501
    .line 502
    move/from16 v34, v9

    .line 503
    .line 504
    move/from16 v30, v13

    .line 505
    .line 506
    move/from16 v32, v27

    .line 507
    .line 508
    const/16 v9, 0x9

    .line 509
    .line 510
    const/16 v31, 0x0

    .line 511
    .line 512
    move/from16 v27, v2

    .line 513
    .line 514
    move v5, v3

    .line 515
    move-object v13, v4

    .line 516
    :goto_b
    sub-int v4, v14, v8

    .line 517
    .line 518
    if-le v11, v4, :cond_17

    .line 519
    .line 520
    move/from16 v11, v29

    .line 521
    .line 522
    :goto_c
    int-to-float v0, v4

    .line 523
    invoke-virtual {v13, v10, v11, v12, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->a(Lc1/e;IIF)I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-lt v3, v12, :cond_16

    .line 528
    .line 529
    sub-int v0, v12, v11

    .line 530
    .line 531
    invoke-virtual {v13, v10, v11, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->h(Lc1/e;II)I

    .line 532
    .line 533
    .line 534
    move-result v29

    .line 535
    move-object/from16 v0, p0

    .line 536
    .line 537
    move-object/from16 v1, p1

    .line 538
    .line 539
    move-object v2, v13

    .line 540
    move/from16 v3, v32

    .line 541
    .line 542
    move v4, v8

    .line 543
    move/from16 v35, v5

    .line 544
    .line 545
    move/from16 v5, v23

    .line 546
    .line 547
    move/from16 v33, v6

    .line 548
    .line 549
    move v6, v11

    .line 550
    move/from16 v36, v7

    .line 551
    .line 552
    move v7, v12

    .line 553
    move/from16 v37, v8

    .line 554
    .line 555
    move/from16 v8, v17

    .line 556
    .line 557
    const/16 v38, 0x9

    .line 558
    .line 559
    move/from16 v9, v33

    .line 560
    .line 561
    move-object v12, v10

    .line 562
    const/4 v11, 0x0

    .line 563
    move/from16 v10, v28

    .line 564
    .line 565
    move-object/from16 v39, v24

    .line 566
    .line 567
    move/from16 v11, v29

    .line 568
    .line 569
    invoke-virtual/range {v0 .. v11}, Lru/zdevs/zarchiver/ui/editor/EditableView;->g(Landroid/graphics/Canvas;Lru/zdevs/zarchiver/ui/editor/b$d;IIIIIIIII)V

    .line 570
    .line 571
    .line 572
    add-int v30, v30, v29

    .line 573
    .line 574
    move-object/from16 v40, v12

    .line 575
    .line 576
    move/from16 v24, v32

    .line 577
    .line 578
    goto/16 :goto_10

    .line 579
    .line 580
    :cond_16
    move/from16 v35, v5

    .line 581
    .line 582
    move/from16 v33, v6

    .line 583
    .line 584
    move/from16 v36, v7

    .line 585
    .line 586
    move/from16 v37, v8

    .line 587
    .line 588
    move-object/from16 v39, v24

    .line 589
    .line 590
    const/16 v38, 0x9

    .line 591
    .line 592
    move-object/from16 v0, p0

    .line 593
    .line 594
    move-object/from16 v1, p1

    .line 595
    .line 596
    move-object v2, v13

    .line 597
    move/from16 v24, v3

    .line 598
    .line 599
    move/from16 v3, v32

    .line 600
    .line 601
    move/from16 v31, v4

    .line 602
    .line 603
    move/from16 v4, v30

    .line 604
    .line 605
    move/from16 v5, v23

    .line 606
    .line 607
    move v6, v11

    .line 608
    move/from16 v7, v24

    .line 609
    .line 610
    move/from16 v8, v17

    .line 611
    .line 612
    move/from16 v9, v33

    .line 613
    .line 614
    move-object v11, v10

    .line 615
    move/from16 v10, v28

    .line 616
    .line 617
    move-object/from16 v40, v11

    .line 618
    .line 619
    move v11, v14

    .line 620
    invoke-virtual/range {v0 .. v11}, Lru/zdevs/zarchiver/ui/editor/EditableView;->g(Landroid/graphics/Canvas;Lru/zdevs/zarchiver/ui/editor/b$d;IIIIIIIII)V

    .line 621
    .line 622
    .line 623
    add-int v23, v23, v15

    .line 624
    .line 625
    move/from16 v11, v24

    .line 626
    .line 627
    move/from16 v4, v31

    .line 628
    .line 629
    move/from16 v6, v33

    .line 630
    .line 631
    move/from16 v5, v35

    .line 632
    .line 633
    move/from16 v7, v36

    .line 634
    .line 635
    move/from16 v8, v37

    .line 636
    .line 637
    move-object/from16 v24, v39

    .line 638
    .line 639
    move-object/from16 v10, v40

    .line 640
    .line 641
    const/16 v9, 0x9

    .line 642
    .line 643
    const/16 v31, 0x0

    .line 644
    .line 645
    goto :goto_c

    .line 646
    :cond_17
    move/from16 v35, v5

    .line 647
    .line 648
    move/from16 v33, v6

    .line 649
    .line 650
    move/from16 v36, v7

    .line 651
    .line 652
    move/from16 v37, v8

    .line 653
    .line 654
    move-object/from16 v40, v10

    .line 655
    .line 656
    move-object/from16 v39, v24

    .line 657
    .line 658
    const/16 v38, 0x9

    .line 659
    .line 660
    goto :goto_d

    .line 661
    :cond_18
    move/from16 v29, v0

    .line 662
    .line 663
    move/from16 v35, v3

    .line 664
    .line 665
    move/from16 v17, v5

    .line 666
    .line 667
    move/from16 v33, v6

    .line 668
    .line 669
    move/from16 v36, v7

    .line 670
    .line 671
    move/from16 v37, v8

    .line 672
    .line 673
    move/from16 v34, v9

    .line 674
    .line 675
    move-object/from16 v40, v10

    .line 676
    .line 677
    move/from16 v30, v13

    .line 678
    .line 679
    move-object/from16 v39, v24

    .line 680
    .line 681
    move/from16 v32, v27

    .line 682
    .line 683
    const/16 v38, 0x9

    .line 684
    .line 685
    move/from16 v27, v2

    .line 686
    .line 687
    move-object v13, v4

    .line 688
    :goto_d
    move/from16 v10, v23

    .line 689
    .line 690
    neg-int v0, v15

    .line 691
    if-le v10, v0, :cond_1a

    .line 692
    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-le v10, v0, :cond_19

    .line 698
    .line 699
    goto/16 :goto_11

    .line 700
    .line 701
    :cond_19
    move-object/from16 v0, p0

    .line 702
    .line 703
    move-object/from16 v1, p1

    .line 704
    .line 705
    move-object v2, v13

    .line 706
    move/from16 v3, v32

    .line 707
    .line 708
    move/from16 v4, v30

    .line 709
    .line 710
    move v5, v10

    .line 711
    move/from16 v6, v29

    .line 712
    .line 713
    move v7, v12

    .line 714
    move/from16 v8, v17

    .line 715
    .line 716
    move/from16 v9, v33

    .line 717
    .line 718
    move/from16 v23, v10

    .line 719
    .line 720
    move/from16 v10, v28

    .line 721
    .line 722
    move v12, v11

    .line 723
    invoke-virtual/range {v0 .. v11}, Lru/zdevs/zarchiver/ui/editor/EditableView;->g(Landroid/graphics/Canvas;Lru/zdevs/zarchiver/ui/editor/b$d;IIIIIIIII)V

    .line 724
    .line 725
    .line 726
    goto :goto_e

    .line 727
    :cond_1a
    move/from16 v23, v10

    .line 728
    .line 729
    move v12, v11

    .line 730
    :cond_1b
    :goto_e
    move/from16 v24, v32

    .line 731
    .line 732
    goto :goto_f

    .line 733
    :cond_1c
    move/from16 v32, v1

    .line 734
    .line 735
    move/from16 v27, v2

    .line 736
    .line 737
    move/from16 v35, v3

    .line 738
    .line 739
    move/from16 v17, v5

    .line 740
    .line 741
    move/from16 v33, v6

    .line 742
    .line 743
    move/from16 v36, v7

    .line 744
    .line 745
    move/from16 v37, v8

    .line 746
    .line 747
    move/from16 v34, v9

    .line 748
    .line 749
    move-object/from16 v40, v10

    .line 750
    .line 751
    move v12, v11

    .line 752
    move/from16 v30, v13

    .line 753
    .line 754
    move-object/from16 v39, v24

    .line 755
    .line 756
    const/16 v38, 0x9

    .line 757
    .line 758
    move-object v13, v4

    .line 759
    sub-int v4, v30, v16

    .line 760
    .line 761
    if-lt v4, v14, :cond_1d

    .line 762
    .line 763
    goto :goto_11

    .line 764
    :cond_1d
    add-int v11, v4, v12

    .line 765
    .line 766
    if-lez v11, :cond_1b

    .line 767
    .line 768
    move/from16 v11, v32

    .line 769
    .line 770
    invoke-virtual {v13, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->c(I)I

    .line 771
    .line 772
    .line 773
    move-result v6

    .line 774
    invoke-virtual {v13, v11}, Lru/zdevs/zarchiver/ui/editor/b$d;->b(I)I

    .line 775
    .line 776
    .line 777
    move-result v7

    .line 778
    move-object/from16 v0, p0

    .line 779
    .line 780
    move-object/from16 v1, p1

    .line 781
    .line 782
    move-object v2, v13

    .line 783
    move v3, v11

    .line 784
    move/from16 v5, v23

    .line 785
    .line 786
    move/from16 v8, v17

    .line 787
    .line 788
    move/from16 v9, v33

    .line 789
    .line 790
    move/from16 v10, v28

    .line 791
    .line 792
    move/from16 v24, v11

    .line 793
    .line 794
    move v11, v12

    .line 795
    invoke-virtual/range {v0 .. v11}, Lru/zdevs/zarchiver/ui/editor/EditableView;->g(Landroid/graphics/Canvas;Lru/zdevs/zarchiver/ui/editor/b$d;IIIIIIIII)V

    .line 796
    .line 797
    .line 798
    :goto_f
    add-int v30, v30, v12

    .line 799
    .line 800
    :goto_10
    add-int/lit8 v1, v24, 0x1

    .line 801
    .line 802
    move-object/from16 v12, p0

    .line 803
    .line 804
    move-object v4, v13

    .line 805
    move/from16 v5, v17

    .line 806
    .line 807
    move/from16 v0, v26

    .line 808
    .line 809
    move/from16 v2, v27

    .line 810
    .line 811
    move/from16 v13, v30

    .line 812
    .line 813
    move/from16 v6, v33

    .line 814
    .line 815
    move/from16 v9, v34

    .line 816
    .line 817
    move/from16 v3, v35

    .line 818
    .line 819
    move/from16 v7, v36

    .line 820
    .line 821
    move/from16 v8, v37

    .line 822
    .line 823
    move-object/from16 v11, v39

    .line 824
    .line 825
    move-object/from16 v10, v40

    .line 826
    .line 827
    goto/16 :goto_9

    .line 828
    .line 829
    :cond_1e
    move/from16 v27, v2

    .line 830
    .line 831
    move/from16 v35, v3

    .line 832
    .line 833
    move-object v13, v4

    .line 834
    move/from16 v36, v7

    .line 835
    .line 836
    move/from16 v37, v8

    .line 837
    .line 838
    move/from16 v34, v9

    .line 839
    .line 840
    move-object/from16 v40, v10

    .line 841
    .line 842
    move-object/from16 v39, v11

    .line 843
    .line 844
    const/16 v38, 0x9

    .line 845
    .line 846
    :goto_11
    iget v0, v13, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 847
    .line 848
    add-int v6, v19, v0

    .line 849
    .line 850
    add-int/lit8 v7, v36, 0x1

    .line 851
    .line 852
    const/4 v5, 0x0

    .line 853
    move-object/from16 v12, p0

    .line 854
    .line 855
    move-object/from16 v13, p1

    .line 856
    .line 857
    move/from16 v9, v34

    .line 858
    .line 859
    move/from16 v30, v35

    .line 860
    .line 861
    move/from16 v8, v37

    .line 862
    .line 863
    move-object/from16 v11, v39

    .line 864
    .line 865
    move-object/from16 v10, v40

    .line 866
    .line 867
    goto/16 :goto_3

    .line 868
    .line 869
    :cond_1f
    :goto_12
    move/from16 v19, v6

    .line 870
    .line 871
    move/from16 v37, v8

    .line 872
    .line 873
    move-object/from16 v40, v10

    .line 874
    .line 875
    move-object/from16 v39, v11

    .line 876
    .line 877
    move/from16 v35, v30

    .line 878
    .line 879
    const/4 v6, 0x0

    .line 880
    aget v0, v20, v6

    .line 881
    .line 882
    const/4 v1, -0x1

    .line 883
    if-eq v0, v1, :cond_21

    .line 884
    .line 885
    const/4 v0, 0x1

    .line 886
    aget v2, v20, v0

    .line 887
    .line 888
    if-ne v2, v1, :cond_20

    .line 889
    .line 890
    goto :goto_13

    .line 891
    :cond_20
    move-object/from16 v7, v40

    .line 892
    .line 893
    goto :goto_14

    .line 894
    :cond_21
    :goto_13
    move-object/from16 v0, v39

    .line 895
    .line 896
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 897
    .line 898
    move/from16 v1, v35

    .line 899
    .line 900
    if-ne v0, v1, :cond_23

    .line 901
    .line 902
    aput v37, v20, v6

    .line 903
    .line 904
    invoke-virtual/range {v40 .. v40}, Lc1/e;->c()I

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    sub-int v0, v19, v0

    .line 909
    .line 910
    move-object/from16 v7, v40

    .line 911
    .line 912
    iget v1, v7, Lc1/e;->c:I

    .line 913
    .line 914
    if-nez v1, :cond_22

    .line 915
    .line 916
    invoke-virtual {v7}, Lc1/e;->c()I

    .line 917
    .line 918
    .line 919
    :cond_22
    iget v1, v7, Lc1/e;->d:I

    .line 920
    .line 921
    add-int/2addr v1, v0

    .line 922
    const/4 v0, 0x1

    .line 923
    aput v1, v20, v0

    .line 924
    .line 925
    invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->f(Landroid/graphics/Canvas;)V

    .line 926
    .line 927
    .line 928
    :goto_14
    move-object/from16 v8, p0

    .line 929
    .line 930
    goto :goto_15

    .line 931
    :cond_23
    move-object/from16 v8, p0

    .line 932
    .line 933
    move-object/from16 v7, v40

    .line 934
    .line 935
    iget-object v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->p:Landroid/graphics/Rect;

    .line 936
    .line 937
    const/4 v1, -0x1

    .line 938
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 939
    .line 940
    .line 941
    invoke-virtual/range {v21 .. v21}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 942
    .line 943
    .line 944
    :goto_15
    move-object/from16 v0, v25

    .line 945
    .line 946
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 947
    .line 948
    const/4 v9, 0x3

    .line 949
    const/4 v10, 0x2

    .line 950
    if-eqz v0, :cond_24

    .line 951
    .line 952
    aget v2, v20, v6

    .line 953
    .line 954
    const/4 v11, 0x1

    .line 955
    aget v3, v20, v11

    .line 956
    .line 957
    aget v4, v20, v10

    .line 958
    .line 959
    aget v5, v20, v9

    .line 960
    .line 961
    move-object/from16 v1, p1

    .line 962
    .line 963
    invoke-interface/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/c$a;->c(Landroid/graphics/Canvas;IIII)V

    .line 964
    .line 965
    .line 966
    goto :goto_16

    .line 967
    :cond_24
    const/4 v11, 0x1

    .line 968
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    iget-object v1, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->o:Lru/zdevs/zarchiver/ui/editor/d;

    .line 973
    .line 974
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 975
    .line 976
    if-nez v2, :cond_25

    .line 977
    .line 978
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/d;->o:Landroid/animation/ValueAnimator;

    .line 979
    .line 980
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    if-nez v2, :cond_25

    .line 985
    .line 986
    move-object/from16 v11, p1

    .line 987
    .line 988
    goto/16 :goto_18

    .line 989
    .line 990
    :cond_25
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/d;->a:Landroid/view/View;

    .line 991
    .line 992
    check-cast v2, Lru/zdevs/zarchiver/ui/editor/d$b;

    .line 993
    .line 994
    iget v3, v1, Lru/zdevs/zarchiver/ui/editor/d;->l:I

    .line 995
    .line 996
    const/4 v4, 0x0

    .line 997
    if-eqz v3, :cond_26

    .line 998
    .line 999
    int-to-float v5, v3

    .line 1000
    move-object/from16 v11, p1

    .line 1001
    .line 1002
    const/4 v12, 0x1

    .line 1003
    invoke-virtual {v11, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_17

    .line 1007
    :cond_26
    move-object/from16 v11, p1

    .line 1008
    .line 1009
    const/4 v12, 0x1

    .line 1010
    :goto_17
    invoke-interface {v2}, Lru/zdevs/zarchiver/ui/editor/d$b;->computeHorizontalScrollRange()I

    .line 1011
    .line 1012
    .line 1013
    move-result v5

    .line 1014
    sub-int/2addr v5, v14

    .line 1015
    invoke-interface {v2}, Lru/zdevs/zarchiver/ui/editor/d$b;->computeHorizontalScrollOffset()I

    .line 1016
    .line 1017
    .line 1018
    move-result v13

    .line 1019
    iget v15, v1, Lru/zdevs/zarchiver/ui/editor/d;->f:I

    .line 1020
    .line 1021
    if-lez v5, :cond_27

    .line 1022
    .line 1023
    invoke-interface {v2}, Lru/zdevs/zarchiver/ui/editor/d$b;->a()I

    .line 1024
    .line 1025
    .line 1026
    move-result v9

    .line 1027
    sub-int v10, v0, v15

    .line 1028
    .line 1029
    iget-object v12, v1, Lru/zdevs/zarchiver/ui/editor/d;->c:Landroid/graphics/drawable/Drawable;

    .line 1030
    .line 1031
    invoke-virtual {v12, v9, v10, v14, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1035
    .line 1036
    .line 1037
    iget v12, v1, Lru/zdevs/zarchiver/ui/editor/d;->e:I

    .line 1038
    .line 1039
    sub-int v19, v14, v12

    .line 1040
    .line 1041
    sub-int v19, v19, v9

    .line 1042
    .line 1043
    mul-int v19, v19, v13

    .line 1044
    .line 1045
    div-int v19, v19, v5

    .line 1046
    .line 1047
    add-int v5, v19, v9

    .line 1048
    .line 1049
    add-int/2addr v12, v5

    .line 1050
    iget-object v9, v1, Lru/zdevs/zarchiver/ui/editor/d;->d:Landroid/graphics/drawable/Drawable;

    .line 1051
    .line 1052
    invoke-virtual {v9, v5, v10, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1056
    .line 1057
    .line 1058
    :cond_27
    if-eqz v3, :cond_28

    .line 1059
    .line 1060
    int-to-float v5, v3

    .line 1061
    neg-int v9, v3

    .line 1062
    int-to-float v9, v9

    .line 1063
    invoke-virtual {v11, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1064
    .line 1065
    .line 1066
    :cond_28
    invoke-interface {v2}, Lru/zdevs/zarchiver/ui/editor/d$b;->computeVerticalScrollRange()I

    .line 1067
    .line 1068
    .line 1069
    move-result v5

    .line 1070
    sub-int/2addr v5, v0

    .line 1071
    invoke-interface {v2}, Lru/zdevs/zarchiver/ui/editor/d$b;->computeVerticalScrollOffset()I

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    if-lez v5, :cond_29

    .line 1076
    .line 1077
    iget v9, v1, Lru/zdevs/zarchiver/ui/editor/d;->i:I

    .line 1078
    .line 1079
    sub-int v9, v14, v9

    .line 1080
    .line 1081
    sub-int v10, v0, v15

    .line 1082
    .line 1083
    iget-object v12, v1, Lru/zdevs/zarchiver/ui/editor/d;->g:Landroid/graphics/drawable/Drawable;

    .line 1084
    .line 1085
    invoke-virtual {v12, v9, v6, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1089
    .line 1090
    .line 1091
    iget v10, v1, Lru/zdevs/zarchiver/ui/editor/d;->j:I

    .line 1092
    .line 1093
    sub-int/2addr v0, v10

    .line 1094
    sub-int/2addr v0, v15

    .line 1095
    mul-int v0, v0, v2

    .line 1096
    .line 1097
    div-int/2addr v0, v5

    .line 1098
    add-int v2, v0, v10

    .line 1099
    .line 1100
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/d;->h:Landroid/graphics/drawable/Drawable;

    .line 1101
    .line 1102
    invoke-virtual {v5, v9, v0, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1106
    .line 1107
    .line 1108
    sub-int v5, v14, v10

    .line 1109
    .line 1110
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/d;->k:Landroid/graphics/Rect;

    .line 1111
    .line 1112
    invoke-virtual {v1, v5, v0, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1113
    .line 1114
    .line 1115
    :cond_29
    if-eqz v3, :cond_2a

    .line 1116
    .line 1117
    neg-int v0, v3

    .line 1118
    int-to-float v0, v0

    .line 1119
    invoke-virtual {v11, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1120
    .line 1121
    .line 1122
    :cond_2a
    :goto_18
    iget-boolean v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 1123
    .line 1124
    if-eqz v0, :cond_2b

    .line 1125
    .line 1126
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1127
    .line 1128
    .line 1129
    :cond_2b
    iget-boolean v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->t:Z

    .line 1130
    .line 1131
    if-eqz v0, :cond_2d

    .line 1132
    .line 1133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1134
    .line 1135
    const/16 v1, 0x17

    .line 1136
    .line 1137
    if-lt v0, v1, :cond_2c

    .line 1138
    .line 1139
    iget-object v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 1140
    .line 1141
    if-eqz v0, :cond_2c

    .line 1142
    .line 1143
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 1144
    .line 1145
    .line 1146
    :cond_2c
    iput-boolean v6, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->t:Z

    .line 1147
    .line 1148
    :cond_2d
    iget-object v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 1149
    .line 1150
    if-eqz v0, :cond_30

    .line 1151
    .line 1152
    iget v1, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->v:I

    .line 1153
    .line 1154
    const/4 v2, 0x1

    .line 1155
    if-ne v1, v2, :cond_2e

    .line 1156
    .line 1157
    aget v3, v20, v6

    .line 1158
    .line 1159
    const/4 v4, -0x1

    .line 1160
    if-eq v3, v4, :cond_2e

    .line 1161
    .line 1162
    aget v2, v20, v2

    .line 1163
    .line 1164
    if-eq v2, v4, :cond_2e

    .line 1165
    .line 1166
    int-to-float v1, v3

    .line 1167
    invoke-virtual {v7}, Lc1/e;->c()I

    .line 1168
    .line 1169
    .line 1170
    move-result v3

    .line 1171
    const/4 v4, 0x2

    .line 1172
    div-int/2addr v3, v4

    .line 1173
    sub-int/2addr v2, v3

    .line 1174
    int-to-float v2, v2

    .line 1175
    invoke-virtual {v0, v1, v2}, Lc1/d;->b(FF)V

    .line 1176
    .line 1177
    .line 1178
    goto :goto_19

    .line 1179
    :cond_2e
    const/4 v4, 0x2

    .line 1180
    if-ne v1, v4, :cond_2f

    .line 1181
    .line 1182
    aget v1, v20, v4

    .line 1183
    .line 1184
    const/4 v2, -0x1

    .line 1185
    if-eq v1, v2, :cond_2f

    .line 1186
    .line 1187
    const/4 v3, 0x3

    .line 1188
    aget v3, v20, v3

    .line 1189
    .line 1190
    if-eq v3, v2, :cond_2f

    .line 1191
    .line 1192
    int-to-float v1, v1

    .line 1193
    invoke-virtual {v7}, Lc1/e;->c()I

    .line 1194
    .line 1195
    .line 1196
    move-result v2

    .line 1197
    div-int/2addr v2, v4

    .line 1198
    sub-int/2addr v3, v2

    .line 1199
    int-to-float v2, v3

    .line 1200
    invoke-virtual {v0, v1, v2}, Lc1/d;->b(FF)V

    .line 1201
    .line 1202
    .line 1203
    :cond_2f
    :goto_19
    iget-object v0, v8, Lru/zdevs/zarchiver/ui/editor/EditableView;->x:Lru/zdevs/zarchiver/ui/editor/EditableView$a;

    .line 1204
    .line 1205
    invoke-virtual {v8, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1206
    .line 1207
    .line 1208
    :cond_30
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->run()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->run()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_5

    .line 13
    .line 14
    const/16 v0, 0x3d

    .line 15
    .line 16
    if-eq p1, v0, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x70

    .line 19
    .line 20
    const v3, 0x1020020

    .line 21
    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    .line 25
    const/16 v0, 0x7c

    .line 26
    .line 27
    const v4, 0x1020022

    .line 28
    .line 29
    .line 30
    const v5, 0x1020021

    .line 31
    .line 32
    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_1
    const/16 v0, 0x1000

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->d()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->c()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_9

    .line 165
    .line 166
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 182
    .line 183
    invoke-virtual {v0}, Lc1/b;->beginBatchEdit()Z

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->h:Landroid/text/method/TextKeyListener;

    .line 187
    .line 188
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 189
    .line 190
    invoke-interface {v3, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual {v0}, Lc1/b;->endBatchEdit()Z

    .line 195
    .line 196
    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->i:Lru/zdevs/zarchiver/ui/editor/f;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {p0, v4, p1, p2}, Lru/zdevs/zarchiver/ui/editor/f;->f(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;ILandroid/view/KeyEvent;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const/16 v3, 0x101

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-ne v0, v3, :cond_a

    .line 222
    .line 223
    packed-switch p1, :pswitch_data_1

    .line 224
    .line 225
    .line 226
    const/4 v0, 0x0

    .line 227
    goto :goto_1

    .line 228
    :pswitch_3
    const/4 v0, 0x1

    .line 229
    :goto_1
    if-eqz v0, :cond_a

    .line 230
    .line 231
    :cond_9
    :goto_2
    const/4 v1, 0x1

    .line 232
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 233
    .line 234
    return v2

    .line 235
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x115
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->h:Landroid/text/method/TextKeyListener;

    .line 8
    .line 9
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 10
    .line 11
    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->o(I)Z

    move-result p1

    return p1
.end method

.method public final onReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    .line 1
    invoke-static {p1}, La0/b;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getSource()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->p(Landroid/content/ClipData;)I

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView$g;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->b:Lru/zdevs/zarchiver/ui/editor/b$a;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, v0, Lru/zdevs/zarchiver/ui/editor/b$a;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget v2, v0, Lru/zdevs/zarchiver/ui/editor/b$a;->c:I

    .line 34
    .line 35
    iput v2, v1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 36
    .line 37
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 38
    .line 39
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/b$a;->b:[I

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aget v4, v0, v3

    .line 43
    .line 44
    aput v4, v2, v3

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    aget v0, v0, v4

    .line 48
    .line 49
    aput v0, v2, v4

    .line 50
    .line 51
    invoke-virtual {v1, v3, v3, v3}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 56
    .line 57
    iget v1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->c:I

    .line 58
    .line 59
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->d:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1, v4}, Lru/zdevs/zarchiver/ui/editor/c;->h(IIZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v1

    .line 67
    throw p1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 6
    .line 7
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    const v3, 0xffc00

    .line 12
    .line 13
    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v2, Lru/zdevs/zarchiver/ui/editor/EditableView$g;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$g;-><init>(Landroid/os/Parcelable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iput v3, v2, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->c:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, v2, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->d:I

    .line 40
    .line 41
    iput-object v1, v2, Lru/zdevs/zarchiver/ui/editor/EditableView$g;->a:Lru/zdevs/zarchiver/ui/editor/b;

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final onScreenStateChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->run()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0, p3, v0}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-le p4, p2, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->p:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    if-le p1, p2, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x104

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x4

    .line 29
    :goto_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->o:Lru/zdevs/zarchiver/ui/editor/d;

    .line 10
    .line 11
    iget v2, v0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/editor/d;->a:Landroid/view/View;

    .line 18
    .line 19
    move-object v4, v2

    .line 20
    check-cast v4, Lru/zdevs/zarchiver/ui/editor/d$b;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const/4 v8, 0x2

    .line 35
    if-eqz v7, :cond_5

    .line 36
    .line 37
    if-eq v7, v3, :cond_4

    .line 38
    .line 39
    if-eq v7, v8, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    if-eq v7, v2, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget v5, v0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 46
    .line 47
    if-eq v5, v8, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget v5, v0, Lru/zdevs/zarchiver/ui/editor/d;->n:F

    .line 51
    .line 52
    sub-float/2addr v5, v6

    .line 53
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iget v7, v0, Lru/zdevs/zarchiver/ui/editor/d;->b:I

    .line 58
    .line 59
    int-to-float v7, v7

    .line 60
    cmpl-float v5, v5, v7

    .line 61
    .line 62
    if-lez v5, :cond_6

    .line 63
    .line 64
    invoke-interface {v4}, Lru/zdevs/zarchiver/ui/editor/d$b;->computeVerticalScrollRange()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    sub-int/2addr v4, v5

    .line 73
    int-to-float v4, v4

    .line 74
    mul-float v4, v4, v6

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iget v7, v0, Lru/zdevs/zarchiver/ui/editor/d;->j:I

    .line 81
    .line 82
    sub-int/2addr v5, v7

    .line 83
    int-to-float v5, v5

    .line 84
    div-float/2addr v4, v5

    .line 85
    float-to-int v4, v4

    .line 86
    invoke-virtual {v2, v4}, Landroid/view/View;->setScrollY(I)V

    .line 87
    .line 88
    .line 89
    iput v6, v0, Lru/zdevs/zarchiver/ui/editor/d;->n:F

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    iget v2, v0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 93
    .line 94
    if-ne v2, v8, :cond_6

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lru/zdevs/zarchiver/ui/editor/d;->a(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    float-to-int v2, v5

    .line 101
    float-to-int v4, v6

    .line 102
    iget-object v5, v0, Lru/zdevs/zarchiver/ui/editor/d;->k:Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iput v6, v0, Lru/zdevs/zarchiver/ui/editor/d;->n:F

    .line 111
    .line 112
    invoke-virtual {v0, v8}, Lru/zdevs/zarchiver/ui/editor/d;->a(I)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_0
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 116
    .line 117
    if-ne v0, v8, :cond_7

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 122
    :goto_2
    if-eqz v0, :cond_8

    .line 123
    .line 124
    return v3

    .line 125
    :cond_8
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 126
    .line 127
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 128
    .line 129
    if-eqz v2, :cond_9

    .line 130
    .line 131
    invoke-interface {v2, p1}, Lru/zdevs/zarchiver/ui/editor/c$a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_9

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_9
    iget-boolean v2, v0, Lru/zdevs/zarchiver/ui/editor/c;->i:Z

    .line 139
    .line 140
    if-eqz v2, :cond_a

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-ne v2, v3, :cond_a

    .line 147
    .line 148
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 149
    .line 150
    check-cast v2, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 151
    .line 152
    const/4 v3, -0x3

    .line 153
    invoke-virtual {v2, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 154
    .line 155
    .line 156
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/c;->i:Z

    .line 157
    .line 158
    :cond_a
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/c;->f:Landroid/view/GestureDetector;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    :goto_3
    return v3
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->run()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a()V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final p(Landroid/content/ClipData;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lc1/b;->beginBatchEdit()Z

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-ge v4, v7, :cond_3

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v7, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    instance-of v8, v7, Landroid/text/Spanned;

    .line 30
    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    if-nez v7, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v8, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-static {v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v10, v6, v7}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 72
    .line 73
    .line 74
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    sub-int/2addr v6, v10

    .line 79
    sub-int/2addr v7, v6

    .line 80
    add-int/2addr v5, v7

    .line 81
    const/4 v6, 0x0

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    const-string v10, "\n"

    .line 88
    .line 89
    invoke-virtual {v8, v9, v10}, Lru/zdevs/zarchiver/ui/editor/b;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {v8, v9, v7}, Lru/zdevs/zarchiver/ui/editor/b;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 97
    .line 98
    .line 99
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    add-int/2addr v7, v3

    .line 104
    add-int/2addr v5, v7

    .line 105
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_3

    .line 118
    .line 119
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v1}, Lc1/b;->endBatchEdit()Z

    .line 123
    .line 124
    .line 125
    return v5
.end method

.method public final postInvalidate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final q(IZ)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_2

    .line 9
    .line 10
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p2, Lc1/d;

    .line 15
    .line 16
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p2, p0, v0}, Lc1/d;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->v:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lc1/d;->a()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->w:Lc1/d;

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public final r(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, v0, v1

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    if-eq p2, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final s(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    aget v1, v1, v4

    .line 12
    .line 13
    if-ne p2, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->g:Lc1/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Lc1/b;->beginBatchEdit()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->r(II)V

    .line 22
    .line 23
    .line 24
    if-ne p3, v4, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x200

    .line 27
    .line 28
    :cond_1
    or-int/lit16 p1, v2, 0x100

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lc1/b;->endBatchEdit()Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setCursorBlink(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->q:Lru/zdevs/zarchiver/ui/editor/EditableView$d;

    .line 2
    .line 3
    iput-boolean p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->b:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-boolean v2, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-boolean v1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->c:Z

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->a:Z

    .line 20
    .line 21
    iget-object p1, v0, Lru/zdevs/zarchiver/ui/editor/EditableView$d;->d:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 22
    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setFont(I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v1, :cond_3

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p1, v3, :cond_2

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq p1, v3, :cond_1

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "sans-serif-condensed"

    .line 18
    .line 19
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "sans-serif-light"

    .line 25
    .line 26
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 35
    .line 36
    :goto_0
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 37
    .line 38
    iget-object v4, v3, Lc1/e;->a:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    .line 42
    .line 43
    iput v2, v3, Lc1/e;->c:I

    .line 44
    .line 45
    iput v2, v3, Lc1/e;->e:I

    .line 46
    .line 47
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->l:Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 53
    .line 54
    invoke-virtual {p1, v2, v2, v1}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getDisplayMetricsOrSystem()Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 11
    .line 12
    iget-object v1, v0, Lc1/e;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lc1/e;->c:I

    .line 19
    .line 20
    iput v1, v0, Lc1/e;->e:I

    .line 21
    .line 22
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->l:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v1, v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setLineNumber(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->s:Z

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 8
    .line 9
    iget v0, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x4

    .line 23
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setOnTextChangeChange(Lru/zdevs/zarchiver/ui/editor/EditableView$f;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->u:Lru/zdevs/zarchiver/ui/editor/EditableView$f;

    return-void
.end method

.method public setScrollY(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lru/zdevs/zarchiver/ui/editor/c;->f(IIZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setSyntax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->p(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->r:Z

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 8
    .line 9
    iget v0, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final t(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne p1, v0, :cond_6

    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x18

    .line 17
    .line 18
    if-lt p1, v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq p1, v4, :cond_5

    .line 30
    .line 31
    if-eq v0, v4, :cond_5

    .line 32
    .line 33
    if-ne v0, p1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    if-le p1, v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v8, v0

    .line 41
    move v0, p1

    .line 42
    move p1, v8

    .line 43
    :goto_0
    sub-int v4, p1, v0

    .line 44
    .line 45
    const v5, 0xffc00

    .line 46
    .line 47
    .line 48
    if-le v4, v5, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 52
    .line 53
    invoke-virtual {v4, v0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/16 v7, 0x14

    .line 66
    .line 67
    if-le v6, v7, :cond_4

    .line 68
    .line 69
    add-int/lit8 v6, v0, 0x14

    .line 70
    .line 71
    invoke-virtual {v4, v6}, Lru/zdevs/zarchiver/ui/editor/b;->j(I)[I

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    aget v3, v6, v3

    .line 76
    .line 77
    invoke-virtual {v4, v0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->subSequence(II)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move-object v3, v5

    .line 83
    :goto_1
    new-instance v4, Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const v3, 0x1030042

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    .line 100
    .line 101
    const/16 v3, 0x11

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    const/4 v6, -0x2

    .line 109
    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {v4, v2, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/view/View;->postInvalidate()V

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Lru/zdevs/zarchiver/ui/editor/EditableView$e;

    .line 141
    .line 142
    invoke-direct {v2, p0, v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView$e;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;II)V

    .line 143
    .line 144
    .line 145
    :try_start_0
    new-instance p1, Landroid/view/View$DragShadowBuilder;

    .line 146
    .line 147
    invoke-direct {p1, v4}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    const/16 v0, 0x100

    .line 151
    .line 152
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    :catch_0
    :cond_5
    :goto_2
    return-void

    .line 159
    :cond_6
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->n:I

    .line 160
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v4, 0x17

    .line 164
    .line 165
    if-lt v0, v4, :cond_8

    .line 166
    .line 167
    const/16 v4, 0x1a

    .line 168
    .line 169
    if-lt v0, v4, :cond_7

    .line 170
    .line 171
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->j()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance v0, Lc1/f;

    .line 182
    .line 183
    invoke-direct {v0, p1, p0}, Lc1/f;-><init>(Landroid/content/Context;Lru/zdevs/zarchiver/ui/editor/EditableView;)V

    .line 184
    .line 185
    .line 186
    new-array p1, v2, [Ljava/lang/Void;

    .line 187
    .line 188
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;

    .line 193
    .line 194
    invoke-direct {v0, p0, p1, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView$c;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_8
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;

    .line 205
    .line 206
    invoke-direct {v0, p0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView$b;-><init>(Lru/zdevs/zarchiver/ui/editor/EditableView;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 214
    .line 215
    :goto_3
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
