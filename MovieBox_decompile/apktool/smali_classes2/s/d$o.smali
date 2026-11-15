.class public final Ls/d$o;
.super Ls/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# static fields
.field public static final c:Ls/d$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls/d$o;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/d$o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls/d$o;->c:Ls/d$o;

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
    const/4 v3, 0x2

    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Ls/d$t;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-interface {p1, p2}, Ls/e;->a(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroidx/compose/runtime/j2;

    .line 11
    .line 12
    const/4 p4, 0x0

    .line 13
    invoke-static {p4}, Ls/d$t;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p1, v0}, Ls/e;->a(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/compose/runtime/c;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->I()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/c;->d(Landroidx/compose/runtime/j2;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p3, p2, p1, p4}, Landroidx/compose/runtime/m2;->v0(Landroidx/compose/runtime/j2;IZ)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->U()V

    .line 34
    .line 35
    .line 36
    return-void
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
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    return-object p1
.end method
