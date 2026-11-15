.class public final Ls/d$c0;
.super Ls/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c0"
.end annotation


# static fields
.field public static final c:Ls/d$c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls/d$c0;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/d$c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls/d$c0;->c:Ls/d$c0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, v2, v0, v1}, Ls/d;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Ls/d$t;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-interface {p1, v0}, Ls/e;->a(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v1}, Ls/d$t;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {p1, v1}, Ls/e;->a(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/compose/runtime/c;

    .line 20
    .line 21
    invoke-static {p2}, Ls/d$q;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-interface {p1, p2}, Ls/e;->b(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    instance-of p2, v0, Landroidx/compose/runtime/c2;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    move-object p2, v0

    .line 34
    check-cast p2, Landroidx/compose/runtime/c2;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p4, p2}, Landroidx/compose/runtime/a2;->c(Landroidx/compose/runtime/b2;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p3, p2, p1, v0}, Landroidx/compose/runtime/m2;->R0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v1, v0, Landroidx/compose/runtime/c2;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->e0()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p3, p2, p1}, Landroidx/compose/runtime/m2;->a1(II)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    sub-int/2addr v1, p1

    .line 64
    check-cast v0, Landroidx/compose/runtime/c2;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/runtime/c2;->a()Landroidx/compose/runtime/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/runtime/c;->b()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->e0()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/m2;->b1(I)I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    sub-int/2addr p2, p3

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 p1, -0x1

    .line 93
    move p2, p1

    .line 94
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-interface {p4, p3, v1, p1, p2}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    instance-of p1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ls/d$q;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p1, v0}, Ls/d$q;->b(II)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "groupSlotIndex"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Ls/d;->e(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ls/d$t;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "value"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ls/d$t;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p1, "anchor"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    return-object p1
.end method
