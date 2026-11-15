.class public abstract Ll4/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ConstraintTrkngWrkr"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ll4/c;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ll4/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Landroidx/work/impl/utils/futures/a;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ll4/c;->d(Landroidx/work/impl/utils/futures/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Landroidx/work/impl/utils/futures/a;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ll4/c;->e(Landroidx/work/impl/utils/futures/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final d(Landroidx/work/impl/utils/futures/a;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/work/i$a;->a()Landroidx/work/i$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static final e(Landroidx/work/impl/utils/futures/a;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/work/i$a;->b()Landroidx/work/i$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
