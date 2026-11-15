.class public final Ls/d$p;
.super Ls/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# static fields
.field public static final c:Ls/d$p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls/d$p;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/d$p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls/d$p;->c:Ls/d$p;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ls/d$t;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-interface {p1, v1}, Ls/e;->a(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/compose/runtime/j2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ls/d$t;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-interface {p1, v3}, Ls/e;->a(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/compose/runtime/c;

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-static {v4}, Ls/d$t;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-interface {p1, v4}, Ls/e;->a(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ls/c;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->x()Landroidx/compose/runtime/m2;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :try_start_0
    invoke-virtual {p1, p2, v4, p4}, Ls/c;->d(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->I()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/c;->d(Landroidx/compose/runtime/j2;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p3, v1, p1, v2}, Landroidx/compose/runtime/m2;->v0(Landroidx/compose/runtime/j2;IZ)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->U()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/m2;->L(Z)V

    .line 62
    .line 63
    .line 64
    throw p1
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
    const-string p1, "anchor"

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
    const-string p1, "from"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Ls/d$t;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string p1, "fixups"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    return-object p1
.end method
