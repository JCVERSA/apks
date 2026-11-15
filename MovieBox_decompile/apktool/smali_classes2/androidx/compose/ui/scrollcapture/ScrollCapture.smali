.class public final Landroidx/compose/ui/scrollcapture/ScrollCapture;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;


# instance fields
.field private final a:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    .line 13
    .line 14
    return-void
.end method

.method private final e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture;->e(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture;->e(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final d(Landroid/view/View;Landroidx/compose/ui/semantics/m;Lkotlin/coroutines/CoroutineContext;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/semantics/m;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/b;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [Landroidx/compose/ui/scrollcapture/i;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {p2, v2, v1, v3, v4}, Landroidx/compose/ui/scrollcapture/j;->f(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-array p2, v3, [Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;->INSTANCE:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;

    .line 28
    .line 29
    aput-object v1, p2, v2

    .line 30
    .line 31
    sget-object v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$3;->INSTANCE:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$3;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    aput-object v1, p2, v2

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/comparisons/ComparisonsKt;->b([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->p()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    sub-int/2addr p2, v2

    .line 55
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    aget-object v4, v0, p2

    .line 60
    .line 61
    :goto_0
    check-cast v4, Landroidx/compose/ui/scrollcapture/i;

    .line 62
    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->c()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {p3, v0, v1, p2, p0}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Lo0/r;Lkotlinx/coroutines/n0;Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->a()Landroidx/compose/ui/layout/l;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {p2}, Landroidx/compose/ui/layout/m;->b(Landroidx/compose/ui/layout/l;)Ly/i;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lo0/r;->i()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    invoke-static {p2}, Lo0/s;->b(Ly/i;)Lo0/r;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Landroidx/compose/ui/graphics/u4;->a(Lo0/r;)Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-instance v2, Landroid/graphics/Point;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-static {v0, v1}, Lo0/p;->i(J)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 118
    .line 119
    .line 120
    invoke-static {p3}, Landroidx/compose/ui/scrollcapture/f;->a(Ljava/lang/Object;)Landroid/view/ScrollCaptureCallback;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-static {p1, p2, v2, p3}, Landroidx/compose/ui/scrollcapture/h;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)Landroid/view/ScrollCaptureTarget;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {p2}, Landroidx/compose/ui/graphics/u4;->a(Lo0/r;)Landroid/graphics/Rect;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p1, p2}, Landroidx/compose/ui/scrollcapture/g;->a(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p4, p1}, Landroidx/compose/ui/contentcapture/h;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
