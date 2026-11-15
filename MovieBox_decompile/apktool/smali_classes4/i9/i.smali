.class public final Li9/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/i$a;
    }
.end annotation


# static fields
.field private static final n:[I

.field private static final o:Li9/i$a;

.field private static final p:Li9/i$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Li9/i;->n:[I

    .line 9
    .line 10
    new-instance v0, Li9/i$a;

    .line 11
    .line 12
    new-instance v1, Li9/g;

    .line 13
    .line 14
    invoke-direct {v1}, Li9/g;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Li9/i$a;-><init>(Li9/i$a$a;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Li9/i;->o:Li9/i$a;

    .line 21
    .line 22
    new-instance v0, Li9/i$a;

    .line 23
    .line 24
    new-instance v1, Li9/h;

    .line 25
    .line 26
    invoke-direct {v1}, Li9/h;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Li9/i$a;-><init>(Li9/i$a$a;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Li9/i;->p:Li9/i$a;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Li9/i;->k:I

    .line 6
    .line 7
    const v0, 0x1b8a0

    .line 8
    .line 9
    .line 10
    iput v0, p0, Li9/i;->m:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Li9/i;->e()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Li9/i;->f()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private d(ILjava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 7
    .line 8
    :pswitch_1
    new-instance p1, Lk9/b;

    .line 9
    .line 10
    invoke-direct {p1}, Lk9/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :pswitch_2
    sget-object p1, Li9/i;->p:Li9/i$a;

    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Li9/i$a;->a([Ljava/lang/Object;)Li9/l;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :pswitch_3
    new-instance p1, Ln9/a;

    .line 34
    .line 35
    invoke-direct {p1}, Ln9/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :pswitch_4
    new-instance p1, Lt9/b;

    .line 44
    .line 45
    invoke-direct {p1}, Lt9/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :pswitch_5
    new-instance p1, Ls9/h0;

    .line 54
    .line 55
    iget v0, p0, Li9/i;->k:I

    .line 56
    .line 57
    iget v1, p0, Li9/i;->l:I

    .line 58
    .line 59
    iget v2, p0, Li9/i;->m:I

    .line 60
    .line 61
    invoke-direct {p1, v0, v1, v2}, Ls9/h0;-><init>(III)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :pswitch_6
    new-instance p1, Ls9/a0;

    .line 70
    .line 71
    invoke-direct {p1}, Ls9/a0;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :pswitch_7
    new-instance p1, Lr9/d;

    .line 80
    .line 81
    invoke-direct {p1}, Lr9/d;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :pswitch_8
    new-instance p1, Lq9/g;

    .line 90
    .line 91
    iget v0, p0, Li9/i;->i:I

    .line 92
    .line 93
    invoke-direct {p1, v0}, Lq9/g;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance p1, Lq9/k;

    .line 100
    .line 101
    iget v0, p0, Li9/i;->h:I

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lq9/k;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :pswitch_9
    new-instance p1, Lp9/f;

    .line 112
    .line 113
    iget v2, p0, Li9/i;->j:I

    .line 114
    .line 115
    iget-boolean v3, p0, Li9/i;->b:Z

    .line 116
    .line 117
    or-int/2addr v2, v3

    .line 118
    iget-boolean v3, p0, Li9/i;->c:Z

    .line 119
    .line 120
    if-eqz v3, :cond_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move v0, v1

    .line 124
    :goto_0
    or-int/2addr v0, v2

    .line 125
    invoke-direct {p1, v0}, Lp9/f;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_a
    new-instance p1, Lo9/e;

    .line 134
    .line 135
    iget v0, p0, Li9/i;->g:I

    .line 136
    .line 137
    invoke-direct {p1, v0}, Lo9/e;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :pswitch_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/b;

    .line 146
    .line 147
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :pswitch_c
    sget-object p1, Li9/i;->o:Li9/i$a;

    .line 155
    .line 156
    iget v0, p0, Li9/i;->f:I

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/4 v2, 0x1

    .line 163
    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v0, v2, v1

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Li9/i$a;->a([Ljava/lang/Object;)Li9/l;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_1

    .line 172
    .line 173
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_1
    new-instance p1, Ll9/d;

    .line 178
    .line 179
    iget v0, p0, Li9/i;->f:I

    .line 180
    .line 181
    invoke-direct {p1, v0}, Ll9/d;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :pswitch_d
    new-instance p1, Lj9/b;

    .line 189
    .line 190
    iget v2, p0, Li9/i;->e:I

    .line 191
    .line 192
    iget-boolean v3, p0, Li9/i;->b:Z

    .line 193
    .line 194
    or-int/2addr v2, v3

    .line 195
    iget-boolean v3, p0, Li9/i;->c:Z

    .line 196
    .line 197
    if-eqz v3, :cond_2

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_2
    move v0, v1

    .line 201
    :goto_1
    or-int/2addr v0, v2

    .line 202
    invoke-direct {p1, v0}, Lj9/b;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :pswitch_e
    new-instance p1, Ls9/h;

    .line 210
    .line 211
    iget v2, p0, Li9/i;->d:I

    .line 212
    .line 213
    iget-boolean v3, p0, Li9/i;->b:Z

    .line 214
    .line 215
    or-int/2addr v2, v3

    .line 216
    iget-boolean v3, p0, Li9/i;->c:Z

    .line 217
    .line 218
    if-eqz v3, :cond_3

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_3
    move v0, v1

    .line 222
    :goto_2
    or-int/2addr v0, v2

    .line 223
    invoke-direct {p1, v0}, Ls9/h;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :pswitch_f
    new-instance p1, Ls9/e;

    .line 231
    .line 232
    invoke-direct {p1}, Ls9/e;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :pswitch_10
    new-instance p1, Ls9/b;

    .line 240
    .line 241
    invoke-direct {p1}, Ls9/b;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_4
    :goto_3
    return-void

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static e()Ljava/lang/reflect/Constructor;
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "isAvailable"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-class v1, Li9/l;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    new-array v1, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v2, v1, v3

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    return-object v3
.end method

.method private static f()Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Li9/l;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public declared-synchronized c(Landroid/net/Uri;Ljava/util/Map;)[Li9/l;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, Li9/i;->n:[I

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/l;->b(Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p2, v0}, Li9/i;->d(ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l;->c(Landroid/net/Uri;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Li9/i;->d(ILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-ge v3, v2, :cond_3

    .line 37
    .line 38
    aget v4, v1, v3

    .line 39
    .line 40
    if-eq v4, p2, :cond_2

    .line 41
    .line 42
    if-eq v4, p1, :cond_2

    .line 43
    .line 44
    invoke-direct {p0, v4, v0}, Li9/i;->d(ILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    new-array p1, p1, [Li9/l;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Li9/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method

.method public declared-synchronized createExtractors()[Li9/l;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Li9/i;->c(Landroid/net/Uri;Ljava/util/Map;)[Li9/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method
