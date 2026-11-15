.class public final Lkotlinx/coroutines/y0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lkotlinx/coroutines/y0;

.field private static final b:Lkotlinx/coroutines/i0;

.field private static final c:Lkotlinx/coroutines/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/y0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/y0;->a:Lkotlinx/coroutines/y0;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/y0;->b:Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    sget-object v0, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    .line 13
    .line 14
    sput-object v0, Lkotlinx/coroutines/y0;->c:Lkotlinx/coroutines/i0;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a()Lkotlinx/coroutines/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/y0;->b:Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->b:Lkotlinx/coroutines/scheduling/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/a2;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/o;->b:Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    return-object v0
.end method
