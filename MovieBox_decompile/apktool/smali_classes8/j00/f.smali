.class final Lj00/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lretrofit2/e;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lio/reactivex/rxjava3/core/Scheduler;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/rxjava3/core/Scheduler;ZZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/f;->a:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    iput-object p2, p0, Lj00/f;->b:Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    iput-boolean p3, p0, Lj00/f;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lj00/f;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lj00/f;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lj00/f;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lj00/f;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lj00/f;->h:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lj00/f;->i:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lj00/f;->a:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lretrofit2/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj00/f;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj00/b;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lj00/b;-><init>(Lretrofit2/d;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lj00/c;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lj00/c;-><init>(Lretrofit2/d;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean p1, p0, Lj00/f;->d:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Lj00/e;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lj00/e;-><init>(Lio/reactivex/rxjava3/core/j;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    move-object v0, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-boolean p1, p0, Lj00/f;->e:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lj00/a;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lj00/a;-><init>(Lio/reactivex/rxjava3/core/j;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    iget-object p1, p0, Lj00/f;->b:Lio/reactivex/rxjava3/core/Scheduler;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_3
    iget-boolean p1, p0, Lj00/f;->f:Z

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    sget-object p1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->MISSING:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/j;->F(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/e;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_4
    iget-boolean p1, p0, Lj00/f;->g:Z

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->A()Lio/reactivex/rxjava3/core/p;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_5
    iget-boolean p1, p0, Lj00/f;->h:Z

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->z()Lio/reactivex/rxjava3/core/g;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_6
    iget-boolean p1, p0, Lj00/f;->i:Z

    .line 75
    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->s()Lio/reactivex/rxjava3/core/a;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_7
    invoke-static {v0}, Ldy/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method
