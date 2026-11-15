.class public abstract Lkotlinx/coroutines/sync/k;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:I

.field private static final b:Lkotlinx/coroutines/internal/z;

.field private static final c:Lkotlinx/coroutines/internal/z;

.field private static final d:Lkotlinx/coroutines/internal/z;

.field private static final e:Lkotlinx/coroutines/internal/z;

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/16 v4, 0xc

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/internal/a0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lkotlinx/coroutines/sync/k;->a:I

    .line 15
    .line 16
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 17
    .line 18
    const-string v1, "PERMIT"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lkotlinx/coroutines/sync/k;->b:Lkotlinx/coroutines/internal/z;

    .line 24
    .line 25
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 26
    .line 27
    const-string v1, "TAKEN"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lkotlinx/coroutines/sync/k;->c:Lkotlinx/coroutines/internal/z;

    .line 33
    .line 34
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 35
    .line 36
    const-string v1, "BROKEN"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lkotlinx/coroutines/sync/k;->d:Lkotlinx/coroutines/internal/z;

    .line 42
    .line 43
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 44
    .line 45
    const-string v1, "CANCELLED"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lkotlinx/coroutines/sync/k;->e:Lkotlinx/coroutines/internal/z;

    .line 51
    .line 52
    const/16 v6, 0xc

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/a0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sput v0, Lkotlinx/coroutines/sync/k;->f:I

    .line 66
    .line 67
    return-void
.end method

.method public static final a(II)Lkotlinx/coroutines/sync/h;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/j;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/h;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/k;->a(II)Lkotlinx/coroutines/sync/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final synthetic c(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/k;->j(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/z;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/k;->d:Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/z;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/k;->e:Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/sync/k;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/z;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/k;->b:Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/sync/k;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic i()Lkotlinx/coroutines/internal/z;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/k;->c:Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final j(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/sync/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/sync/l;-><init>(JLkotlinx/coroutines/sync/l;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
