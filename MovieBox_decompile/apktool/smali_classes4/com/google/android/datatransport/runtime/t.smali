.class public Lcom/google/android/datatransport/runtime/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/s;


# static fields
.field private static volatile e:Lcom/google/android/datatransport/runtime/u;


# instance fields
.field private final a:Le9/a;

.field private final b:Le9/a;

.field private final c:La9/e;

.field private final d:Lb9/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Le9/a;Le9/a;La9/e;Lb9/o;Lb9/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/t;->a:Le9/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/t;->b:Le9/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/t;->c:La9/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/t;->d:Lb9/o;

    .line 11
    .line 12
    invoke-virtual {p5}, Lb9/s;->c()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private b(Lcom/google/android/datatransport/runtime/n;)Lcom/google/android/datatransport/runtime/i;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Lcom/google/android/datatransport/runtime/i$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/t;->a:Le9/a;

    .line 6
    .line 7
    invoke-interface {v1}, Le9/a;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/t;->b:Le9/a;

    .line 16
    .line 17
    invoke-interface {v1}, Le9/a;->getTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->o(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->n(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/datatransport/runtime/h;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->b()Lt8/c;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->d()[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/runtime/h;-><init>(Lt8/c;[B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lt8/d;->a()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lt8/d;->e()Lt8/f;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lt8/d;->e()Lt8/f;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lt8/f;->a()Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lt8/d;->e()Lt8/f;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lt8/f;->a()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->l(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lt8/d;->b()Lt8/e;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lt8/d;->b()Lt8/e;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lt8/e;->c()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    invoke-virtual {p1}, Lt8/e;->c()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->m(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    .line 130
    .line 131
    .line 132
    :cond_1
    invoke-virtual {p1}, Lt8/e;->a()[B

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    invoke-virtual {p1}, Lt8/e;->a()[B

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->j([B)Lcom/google/android/datatransport/runtime/i$a;

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-virtual {p1}, Lt8/e;->b()[B

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    invoke-virtual {p1}, Lt8/e;->b()[B

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/i$a;->k([B)Lcom/google/android/datatransport/runtime/i$a;

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1
.end method

.method public static c()Lcom/google/android/datatransport/runtime/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/u;->h()Lcom/google/android/datatransport/runtime/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Not initialized!"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private static d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/datatransport/runtime/g;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/g;->a()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "proto"

    .line 17
    .line 18
    invoke-static {p0}, Lt8/c;->b(Ljava/lang/String;)Lt8/c;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/google/android/datatransport/runtime/t;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/datatransport/runtime/e;->a()Lcom/google/android/datatransport/runtime/u$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/u$a;->a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/u$a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/u$a;->build()Lcom/google/android/datatransport/runtime/u;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/n;Lt8/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/t;->c:La9/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->f()Lcom/google/android/datatransport/runtime/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lt8/d;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lt8/d;->d()Lcom/google/android/datatransport/Priority;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/o;->f(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/t;->b(Lcom/google/android/datatransport/runtime/n;)Lcom/google/android/datatransport/runtime/i;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1, p2}, La9/e;->a(Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;Lt8/j;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e()Lb9/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/t;->d:Lb9/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Lcom/google/android/datatransport/runtime/f;)Lt8/i;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/p;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/datatransport/runtime/o;->a()Lcom/google/android/datatransport/runtime/o$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/o$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/o$a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getExtras()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/o$a;->c([B)Lcom/google/android/datatransport/runtime/o$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o$a;->a()Lcom/google/android/datatransport/runtime/o;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/p;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/s;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lt8/i;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/t;->d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/datatransport/runtime/o;->a()Lcom/google/android/datatransport/runtime/o$a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/o$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/o$a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o$a;->a()Lcom/google/android/datatransport/runtime/o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/p;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/s;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
