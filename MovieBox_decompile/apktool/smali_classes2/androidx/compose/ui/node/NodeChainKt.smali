.class public abstract Landroidx/compose/ui/node/NodeChainKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/ui/node/NodeChainKt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/node/NodeChainKt$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->s1(I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/ui/node/NodeChainKt;->a:Landroidx/compose/ui/node/NodeChainKt$a;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->e(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Landroidx/compose/ui/node/NodeChainKt$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/NodeChainKt;->a:Landroidx/compose/ui/node/NodeChainKt$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->f(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Landroidx/compose/runtime/collection/b;

    .line 12
    .line 13
    new-array v0, v0, [Landroidx/compose/ui/f;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/compose/ui/f;

    .line 40
    .line 41
    instance-of v2, v0, Landroidx/compose/ui/CombinedModifier;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/ui/CombinedModifier;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/CombinedModifier;->a()Landroidx/compose/ui/f;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/CombinedModifier;->i()Landroidx/compose/ui/f;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    instance-of v2, v0, Landroidx/compose/ui/f$b;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-nez p0, :cond_2

    .line 71
    .line 72
    new-instance p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(Landroidx/compose/runtime/collection/b;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object v2, p0

    .line 78
    invoke-interface {v0, p0}, Landroidx/compose/ui/f;->c(Lkotlin/jvm/functions/Function1;)Z

    .line 79
    .line 80
    .line 81
    move-object p0, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-object p1
.end method

.method private static final f(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/l0;->i(Landroidx/compose/ui/f$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
