.class public final Lkotlinx/serialization/json/internal/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lkotlinx/serialization/json/internal/h;

.field private static final b:Lkotlin/collections/ArrayDeque;

.field private static c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/internal/h;->a:Lkotlinx/serialization/json/internal/h;

    .line 7
    .line 8
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkotlinx/serialization/json/internal/h;->b:Lkotlin/collections/ArrayDeque;

    .line 14
    .line 15
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    const-string v0, "kotlinx.serialization.json.pool.size"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getProperty(\"kotlinx.ser\u2026lization.json.pool.size\")"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/high16 v0, 0x100000

    .line 65
    .line 66
    :goto_1
    sput v0, Lkotlinx/serialization/json/internal/h;->d:I

    .line 67
    .line 68
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


# virtual methods
.method public final a([C)V
    .locals 3

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    sget v0, Lkotlinx/serialization/json/internal/h;->c:I

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    add-int/2addr v1, v0

    .line 11
    sget v2, Lkotlinx/serialization/json/internal/h;->d:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    add-int/2addr v0, v1

    .line 17
    sput v0, Lkotlinx/serialization/json/internal/h;->c:I

    .line 18
    .line 19
    sget-object v0, Lkotlinx/serialization/json/internal/h;->b:Lkotlin/collections/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final b()[C
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lkotlinx/serialization/json/internal/h;->b:Lkotlin/collections/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->q()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [C

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget v1, Lkotlinx/serialization/json/internal/h;->c:I

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    sub-int/2addr v1, v2

    .line 16
    sput v1, Lkotlinx/serialization/json/internal/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x80

    .line 26
    .line 27
    new-array v0, v0, [C

    .line 28
    .line 29
    :cond_1
    return-object v0

    .line 30
    :goto_1
    monitor-exit p0

    .line 31
    throw v0
.end method
