.class public final Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lz3/e$b;)Lz3/e;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$a;->c(Landroid/content/Context;Lz3/e$b;)Lz3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroid/content/Context;Lz3/e$b;)Lz3/e;
    .locals 1

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "configuration"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lz3/e$b;->f:Lz3/e$b$b;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lz3/e$b$b;->a(Landroid/content/Context;)Lz3/e$b$a;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, p1, Lz3/e$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lz3/e$b$a;->d(Ljava/lang/String;)Lz3/e$b$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p1, p1, Lz3/e$b;->c:Lz3/e$a;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lz3/e$b$a;->c(Lz3/e$a;)Lz3/e$b$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lz3/e$b$a;->e(Z)Lz3/e$b$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lz3/e$b$a;->a(Z)Lz3/e$b$a;

    .line 35
    .line 36
    .line 37
    new-instance p1, La4/h;

    .line 38
    .line 39
    invoke-direct {p1}, La4/h;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lz3/e$b$a;->b()Lz3/e$b;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, La4/h;->a(Lz3/e$b;)Lz3/e;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "queryExecutor"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-class v2, Landroidx/work/impl/WorkDatabase;

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v2}, Landroidx/room/s;->b(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$a;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p3, "androidx.work.workdb"

    .line 27
    .line 28
    invoke-static {p1, v2, p3}, Landroidx/room/s;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance v2, Landroidx/work/impl/x;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Landroidx/work/impl/x;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v2}, Landroidx/room/RoomDatabase$a;->g(Lz3/e$c;)Landroidx/room/RoomDatabase$a;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/room/RoomDatabase$a;->h(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$a;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object p3, Landroidx/work/impl/c;->a:Landroidx/work/impl/c;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-array p3, v1, [Lx3/b;

    .line 52
    .line 53
    sget-object v2, Landroidx/work/impl/i;->c:Landroidx/work/impl/i;

    .line 54
    .line 55
    aput-object v2, p3, v0

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    new-instance p3, Landroidx/work/impl/r;

    .line 62
    .line 63
    const/4 v2, 0x2

    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-direct {p3, p1, v2, v3}, Landroidx/work/impl/r;-><init>(Landroid/content/Context;II)V

    .line 66
    .line 67
    .line 68
    new-array v2, v1, [Lx3/b;

    .line 69
    .line 70
    aput-object p3, v2, v0

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    new-array p3, v1, [Lx3/b;

    .line 77
    .line 78
    sget-object v2, Landroidx/work/impl/j;->c:Landroidx/work/impl/j;

    .line 79
    .line 80
    aput-object v2, p3, v0

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-array p3, v1, [Lx3/b;

    .line 87
    .line 88
    sget-object v2, Landroidx/work/impl/k;->c:Landroidx/work/impl/k;

    .line 89
    .line 90
    aput-object v2, p3, v0

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance p3, Landroidx/work/impl/r;

    .line 97
    .line 98
    const/4 v2, 0x5

    .line 99
    const/4 v3, 0x6

    .line 100
    invoke-direct {p3, p1, v2, v3}, Landroidx/work/impl/r;-><init>(Landroid/content/Context;II)V

    .line 101
    .line 102
    .line 103
    new-array v2, v1, [Lx3/b;

    .line 104
    .line 105
    aput-object p3, v2, v0

    .line 106
    .line 107
    invoke-virtual {p2, v2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-array p3, v1, [Lx3/b;

    .line 112
    .line 113
    sget-object v2, Landroidx/work/impl/l;->c:Landroidx/work/impl/l;

    .line 114
    .line 115
    aput-object v2, p3, v0

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-array p3, v1, [Lx3/b;

    .line 122
    .line 123
    sget-object v2, Landroidx/work/impl/m;->c:Landroidx/work/impl/m;

    .line 124
    .line 125
    aput-object v2, p3, v0

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    new-array p3, v1, [Lx3/b;

    .line 132
    .line 133
    sget-object v2, Landroidx/work/impl/n;->c:Landroidx/work/impl/n;

    .line 134
    .line 135
    aput-object v2, p3, v0

    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance p3, Landroidx/work/impl/f0;

    .line 142
    .line 143
    invoke-direct {p3, p1}, Landroidx/work/impl/f0;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    new-array v2, v1, [Lx3/b;

    .line 147
    .line 148
    aput-object p3, v2, v0

    .line 149
    .line 150
    invoke-virtual {p2, v2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    new-instance p3, Landroidx/work/impl/r;

    .line 155
    .line 156
    const/16 v2, 0xa

    .line 157
    .line 158
    const/16 v3, 0xb

    .line 159
    .line 160
    invoke-direct {p3, p1, v2, v3}, Landroidx/work/impl/r;-><init>(Landroid/content/Context;II)V

    .line 161
    .line 162
    .line 163
    new-array p1, v1, [Lx3/b;

    .line 164
    .line 165
    aput-object p3, p1, v0

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-array p2, v1, [Lx3/b;

    .line 172
    .line 173
    sget-object p3, Landroidx/work/impl/f;->c:Landroidx/work/impl/f;

    .line 174
    .line 175
    aput-object p3, p2, v0

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-array p2, v1, [Lx3/b;

    .line 182
    .line 183
    sget-object p3, Landroidx/work/impl/g;->c:Landroidx/work/impl/g;

    .line 184
    .line 185
    aput-object p3, p2, v0

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-array p2, v1, [Lx3/b;

    .line 192
    .line 193
    sget-object p3, Landroidx/work/impl/h;->c:Landroidx/work/impl/h;

    .line 194
    .line 195
    aput-object p3, p2, v0

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->e()Landroidx/room/RoomDatabase$a;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroidx/work/impl/WorkDatabase;

    .line 210
    .line 211
    return-object p1
.end method
