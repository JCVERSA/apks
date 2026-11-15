.class public final Lpg/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Log/b;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:I


# direct methods
.method public constructor <init>(IILjava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lpg/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lpg/a;->g:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lpg/a;->a:I

    .line 17
    .line 18
    iput p2, p0, Lpg/a;->b:I

    .line 19
    .line 20
    iput-object p3, p0, Lpg/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/tn/lib/thread/c;
    .locals 9

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iget v1, p0, Lpg/a;->g:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lpg/a;->g:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lpg/a;->g:I

    .line 17
    .line 18
    iget v0, p0, Lpg/a;->a:I

    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lpg/a;->a:I

    .line 25
    .line 26
    sget-object v0, Lpg/c;->b:Lpg/c$a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lpg/c$a;->a()Lpg/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lpg/a;->e:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    iget-object v0, p0, Lpg/a;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget v0, p0, Lpg/a;->b:I

    .line 43
    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    if-eq v0, v1, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    if-eq v0, v1, :cond_0

    .line 54
    .line 55
    const-string v0, "ThreadEngine"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "SINGLE"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "SCHEDULED"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "CACHEABLE"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string v0, "FIXED"

    .line 68
    .line 69
    :goto_0
    iput-object v0, p0, Lpg/a;->c:Ljava/lang/String;

    .line 70
    .line 71
    :cond_4
    new-instance v0, Lcom/tn/lib/thread/c;

    .line 72
    .line 73
    iget v2, p0, Lpg/a;->b:I

    .line 74
    .line 75
    iget v3, p0, Lpg/a;->a:I

    .line 76
    .line 77
    iget v4, p0, Lpg/a;->g:I

    .line 78
    .line 79
    iget-object v5, p0, Lpg/a;->c:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v6, p0, Lpg/a;->d:Log/b;

    .line 82
    .line 83
    iget-object v7, p0, Lpg/a;->e:Ljava/util/concurrent/Executor;

    .line 84
    .line 85
    iget-object v8, p0, Lpg/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 86
    .line 87
    move-object v1, v0

    .line 88
    invoke-direct/range {v1 .. v8}, Lcom/tn/lib/thread/c;-><init>(IIILjava/lang/String;Log/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lpg/a;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lpg/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(I)Lpg/a;
    .locals 0

    .line 1
    iput p1, p0, Lpg/a;->g:I

    .line 2
    .line 3
    return-object p0
.end method
