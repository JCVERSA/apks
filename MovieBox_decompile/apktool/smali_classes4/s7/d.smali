.class public Ls7/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls7/d$a;
    }
.end annotation


# instance fields
.field private a:Ls7/a;

.field private b:Lg8/c;


# direct methods
.method constructor <init>(Ls7/a;Lg8/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls7/d;->a:Ls7/a;

    .line 3
    iput-object p2, p0, Ls7/d;->b:Lg8/c;

    return-void
.end method

.method constructor <init>(Ls7/d$a;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ls7/a$a;

    sget-object v1, Ls7/e;->b:Ls7/a;

    invoke-direct {v0, v1}, Ls7/a$a;-><init>(Ls7/a;)V

    .line 6
    invoke-static {p1}, Ls7/d$a;->a(Ls7/d$a;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Ls7/d$a;->a(Ls7/d$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ls7/a$a;->B(I)Ls7/a$a;

    .line 8
    :cond_0
    invoke-static {p1}, Ls7/d$a;->b(Ls7/d$a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p1}, Ls7/d$a;->b(Ls7/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->E(Ljava/lang/String;)Ls7/a$a;

    .line 10
    :cond_1
    invoke-static {p1}, Ls7/d$a;->l(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {p1}, Ls7/d$a;->m(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Ls7/a$a;->x()Ls7/a$a;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Ls7/a$a;->u()Ls7/a$a;

    .line 14
    :cond_3
    :goto_0
    invoke-static {p1}, Ls7/d$a;->n(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-static {p1}, Ls7/d$a;->o(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-static {p1}, Ls7/d$a;->p(Ls7/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ls7/d$a;->q(Ls7/d$a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ls7/a$a;->w(Ljava/lang/String;I)Ls7/a$a;

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v0}, Ls7/a$a;->t()Ls7/a$a;

    .line 18
    :cond_5
    :goto_1
    invoke-static {p1}, Ls7/d$a;->r(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    invoke-static {p1}, Ls7/d$a;->s(Ls7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v0}, Ls7/a$a;->v()Ls7/a$a;

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v0}, Ls7/a$a;->s()Ls7/a$a;

    .line 22
    :cond_7
    :goto_2
    invoke-static {p1}, Ls7/d$a;->c(Ls7/d$a;)Lw7/b;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    invoke-static {p1}, Ls7/d$a;->c(Ls7/d$a;)Lw7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->A(Lw7/b;)Ls7/a$a;

    .line 24
    :cond_8
    invoke-static {p1}, Ls7/d$a;->d(Ls7/d$a;)Lz7/b;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 25
    invoke-static {p1}, Ls7/d$a;->d(Ls7/d$a;)Lz7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->H(Lz7/b;)Ls7/a$a;

    .line 26
    :cond_9
    invoke-static {p1}, Ls7/d$a;->e(Ls7/d$a;)Ly7/b;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 27
    invoke-static {p1}, Ls7/d$a;->e(Ls7/d$a;)Ly7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->G(Ly7/b;)Ls7/a$a;

    .line 28
    :cond_a
    invoke-static {p1}, Ls7/d$a;->f(Ls7/d$a;)Lb8/b;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 29
    invoke-static {p1}, Ls7/d$a;->f(Ls7/d$a;)Lb8/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->F(Lb8/b;)Ls7/a$a;

    .line 30
    :cond_b
    invoke-static {p1}, Ls7/d$a;->g(Ls7/d$a;)La8/b;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 31
    invoke-static {p1}, Ls7/d$a;->g(Ls7/d$a;)La8/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->D(La8/b;)Ls7/a$a;

    .line 32
    :cond_c
    invoke-static {p1}, Ls7/d$a;->h(Ls7/d$a;)Lv7/a;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 33
    invoke-static {p1}, Ls7/d$a;->h(Ls7/d$a;)Lv7/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->q(Lv7/a;)Ls7/a$a;

    .line 34
    :cond_d
    invoke-static {p1}, Ls7/d$a;->i(Ls7/d$a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 35
    invoke-static {p1}, Ls7/d$a;->i(Ls7/d$a;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->C(Ljava/util/Map;)Ls7/a$a;

    .line 36
    :cond_e
    invoke-static {p1}, Ls7/d$a;->j(Ls7/d$a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 37
    invoke-static {p1}, Ls7/d$a;->j(Ls7/d$a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls7/a$a;->z(Ljava/util/List;)Ls7/a$a;

    .line 38
    :cond_f
    invoke-virtual {v0}, Ls7/a$a;->r()Ls7/a;

    move-result-object v0

    iput-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 39
    invoke-static {p1}, Ls7/d$a;->k(Ls7/d$a;)Lg8/c;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 40
    invoke-static {p1}, Ls7/d$a;->k(Ls7/d$a;)Lg8/c;

    move-result-object p1

    iput-object p1, p0, Ls7/d;->b:Lg8/c;

    goto :goto_3

    .line 41
    :cond_10
    sget-object p1, Ls7/e;->c:Lg8/c;

    iput-object p1, p0, Ls7/d;->b:Lg8/c;

    :goto_3
    return-void
.end method

.method private h(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 2
    .line 3
    iget v0, v0, Ls7/a;->a:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p0, p1, p2}, Ls7/d;->i(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private i(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 2
    .line 3
    iget-object v3, v0, Ls7/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, v0, Ls7/a;->c:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Ls7/a;->k:Lb8/b;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Lu7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v4, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v2

    .line 23
    :goto_0
    iget-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 24
    .line 25
    iget-boolean v1, v0, Ls7/a;->d:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Ls7/a;->l:La8/b;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/Throwable;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Ls7/d;->a:Ls7/a;

    .line 41
    .line 42
    iget-object v5, v2, Ls7/a;->e:Ljava/lang/String;

    .line 43
    .line 44
    iget v2, v2, Ls7/a;->f:I

    .line 45
    .line 46
    invoke-static {v1, v5, v2}, Lf8/a;->b([Ljava/lang/StackTraceElement;Ljava/lang/String;I)[Ljava/lang/StackTraceElement;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lu7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v5, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v5, v2

    .line 57
    :goto_1
    iget-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 58
    .line 59
    iget-object v0, v0, Ls7/a;->o:Ljava/util/List;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    new-instance v0, Ls7/b;

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    move v2, p1

    .line 67
    move-object v6, p2

    .line 68
    invoke-direct/range {v1 .. v6}, Ls7/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Ls7/d;->a:Ls7/a;

    .line 72
    .line 73
    iget-object p1, p1, Ls7/a;->o:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lc8/a;

    .line 90
    .line 91
    invoke-interface {p2, v0}, Lc8/a;->a(Ls7/b;)Ls7/b;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iget-object v1, v0, Ls7/b;->b:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    iget-object v1, v0, Ls7/b;->c:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    :cond_4
    invoke-static {}, Ld8/b;->e()Ld8/b;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v1, "Interceptor "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p2, " should not remove the tag or message of a log, if you don\'t want to print this log, just return a null when intercept."

    .line 124
    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Ld8/b;->c(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    iget p1, v0, Ls7/b;->a:I

    .line 137
    .line 138
    iget-object v3, v0, Ls7/b;->b:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v4, v0, Ls7/b;->d:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v5, v0, Ls7/b;->e:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p2, v0, Ls7/b;->c:Ljava/lang/String;

    .line 145
    .line 146
    :cond_6
    iget-object v0, p0, Ls7/d;->b:Lg8/c;

    .line 147
    .line 148
    iget-object v1, p0, Ls7/d;->a:Ls7/a;

    .line 149
    .line 150
    iget-boolean v2, v1, Ls7/a;->g:Z

    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    iget-object v1, v1, Ls7/a;->m:Lv7/a;

    .line 155
    .line 156
    filled-new-array {v4, v5, p2}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {v1, p2}, Lu7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v2, ""

    .line 171
    .line 172
    if-eqz v4, :cond_8

    .line 173
    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    sget-object v4, Ld8/c;->a:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    goto :goto_2

    .line 192
    :cond_8
    move-object v4, v2

    .line 193
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    if-eqz v5, :cond_9

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    sget-object v4, Ld8/c;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    :goto_3
    invoke-interface {v0, p1, v3, p2}, Lg8/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Ls7/d;->g(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public b([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Ls7/d;->h(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1}, Ls7/d;->g(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public d([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1}, Ls7/d;->h(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1}, Ls7/d;->g(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, Ls7/d;->h(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method g(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/d;->a:Ls7/a;

    .line 2
    .line 3
    iget v0, v0, Ls7/a;->a:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string p2, ""

    .line 12
    .line 13
    :goto_0
    invoke-direct {p0, p1, p2}, Ls7/d;->i(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public j([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Ls7/d;->h(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public k([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1}, Ls7/d;->h(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
