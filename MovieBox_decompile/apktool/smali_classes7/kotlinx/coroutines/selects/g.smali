.class public abstract Lkotlinx/coroutines/selects/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lkotlin/jvm/functions/Function3;

.field private static final b:Lkotlinx/coroutines/internal/z;

.field private static final c:Lkotlinx/coroutines/internal/z;

.field private static final d:Lkotlinx/coroutines/internal/z;

.field private static final e:Lkotlinx/coroutines/internal/z;

.field private static final f:Lkotlinx/coroutines/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/g$a;->a:Lkotlinx/coroutines/selects/g$a;

    .line 2
    .line 3
    sput-object v0, Lkotlinx/coroutines/selects/g;->a:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 6
    .line 7
    const-string v1, "STATE_REG"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lkotlinx/coroutines/selects/g;->b:Lkotlinx/coroutines/internal/z;

    .line 13
    .line 14
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 15
    .line 16
    const-string v1, "STATE_COMPLETED"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lkotlinx/coroutines/selects/g;->c:Lkotlinx/coroutines/internal/z;

    .line 22
    .line 23
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 24
    .line 25
    const-string v1, "STATE_CANCELLED"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lkotlinx/coroutines/selects/g;->d:Lkotlinx/coroutines/internal/z;

    .line 31
    .line 32
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 33
    .line 34
    const-string v1, "NO_RESULT"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lkotlinx/coroutines/selects/g;->e:Lkotlinx/coroutines/internal/z;

    .line 40
    .line 41
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 42
    .line 43
    const-string v1, "PARAM_CLAUSE_0"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lkotlinx/coroutines/selects/g;->f:Lkotlinx/coroutines/internal/z;

    .line 49
    .line 50
    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function3;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/selects/g;->a:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object v0
.end method
