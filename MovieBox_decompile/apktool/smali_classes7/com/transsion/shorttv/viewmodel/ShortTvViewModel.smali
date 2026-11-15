.class public final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;
    }
.end annotation


# static fields
.field public static final d0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;


# instance fields
.field private final A:Ljava/util/HashMap;

.field private final B:Ljava/util/Set;

.field private final C:Landroidx/lifecycle/b0;

.field private final D:Landroidx/lifecycle/b0;

.field private final E:Landroidx/lifecycle/LiveData;

.field private final F:Landroidx/lifecycle/b0;

.field private final G:Landroidx/lifecycle/LiveData;

.field private final H:Landroidx/lifecycle/b0;

.field private final I:Landroidx/lifecycle/LiveData;

.field private final J:Landroidx/lifecycle/b0;

.field private final K:Landroidx/lifecycle/LiveData;

.field private final L:Landroidx/lifecycle/b0;

.field private M:Landroidx/lifecycle/LiveData;

.field private final N:Lkotlin/Lazy;

.field private final O:Lkotlin/Lazy;

.field private final P:Lkotlin/Lazy;

.field private final Q:Lvr/a;

.field private final R:Lkotlin/Lazy;

.field private final S:Lkotlin/Lazy;

.field private final T:Lkotlin/Lazy;

.field private final U:Lkotlin/Lazy;

.field private final V:Lkotlin/Lazy;

.field private final W:Lkotlin/Lazy;

.field private final X:Lkotlin/Lazy;

.field private final Y:Lkotlin/Lazy;

.field private final Z:Lkotlin/Lazy;

.field private final a:Lsr/a;

.field private final a0:Ljava/util/HashMap;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b0:Lkotlinx/coroutines/t1;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c0:Ljava/util/HashMap;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/LiveData;

.field private i:Ljava/lang/String;

.field private j:Z

.field private volatile k:Z

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/LiveData;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/LiveData;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/LiveData;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Landroidx/lifecycle/LiveData;

.field private u:Ljava/util/List;

.field private v:Ljava/util/concurrent/ConcurrentHashMap;

.field private final w:Landroidx/lifecycle/b0;

.field private final x:Landroidx/lifecycle/b0;

.field private final y:Landroidx/lifecycle/b0;

.field private final z:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Lsr/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lsr/a;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a:Lsr/a;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v0, Landroidx/lifecycle/b0;

    .line 36
    .line 37
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    .line 41
    .line 42
    new-instance v0, Landroidx/lifecycle/b0;

    .line 43
    .line 44
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 48
    .line 49
    new-instance v0, Landroidx/lifecycle/b0;

    .line 50
    .line 51
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    .line 55
    .line 56
    new-instance v0, Landroidx/lifecycle/b0;

    .line 57
    .line 58
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    new-instance v0, Landroidx/lifecycle/b0;

    .line 66
    .line 67
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    .line 73
    .line 74
    new-instance v0, Landroidx/lifecycle/b0;

    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    .line 80
    .line 81
    new-instance v0, Landroidx/lifecycle/b0;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/LiveData;

    .line 89
    .line 90
    new-instance v0, Landroidx/lifecycle/b0;

    .line 91
    .line 92
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 98
    .line 99
    new-instance v0, Landroidx/lifecycle/b0;

    .line 100
    .line 101
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/LiveData;

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 114
    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    .line 122
    new-instance v0, Landroidx/lifecycle/b0;

    .line 123
    .line 124
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 128
    .line 129
    new-instance v0, Landroidx/lifecycle/b0;

    .line 130
    .line 131
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    .line 135
    .line 136
    new-instance v0, Landroidx/lifecycle/b0;

    .line 137
    .line 138
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    .line 142
    .line 143
    new-instance v0, Landroidx/lifecycle/b0;

    .line 144
    .line 145
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    .line 149
    .line 150
    new-instance v0, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    .line 156
    .line 157
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    .line 163
    .line 164
    new-instance v0, Landroidx/lifecycle/b0;

    .line 165
    .line 166
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C:Landroidx/lifecycle/b0;

    .line 170
    .line 171
    new-instance v0, Landroidx/lifecycle/b0;

    .line 172
    .line 173
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E:Landroidx/lifecycle/LiveData;

    .line 179
    .line 180
    new-instance v0, Landroidx/lifecycle/b0;

    .line 181
    .line 182
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G:Landroidx/lifecycle/LiveData;

    .line 188
    .line 189
    new-instance v0, Landroidx/lifecycle/b0;

    .line 190
    .line 191
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I:Landroidx/lifecycle/LiveData;

    .line 197
    .line 198
    new-instance v0, Landroidx/lifecycle/b0;

    .line 199
    .line 200
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    .line 204
    .line 205
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K:Landroidx/lifecycle/LiveData;

    .line 206
    .line 207
    new-instance v0, Landroidx/lifecycle/b0;

    .line 208
    .line 209
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M:Landroidx/lifecycle/LiveData;

    .line 215
    .line 216
    new-instance v0, Lcom/transsion/shorttv/viewmodel/c;

    .line 217
    .line 218
    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/c;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N:Lkotlin/Lazy;

    .line 226
    .line 227
    new-instance v0, Lcom/transsion/shorttv/viewmodel/h;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/h;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O:Lkotlin/Lazy;

    .line 237
    .line 238
    new-instance v0, Lcom/transsion/shorttv/viewmodel/i;

    .line 239
    .line 240
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/i;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P:Lkotlin/Lazy;

    .line 248
    .line 249
    sget-object v0, Lpq/c;->a:Lpq/c;

    .line 250
    .line 251
    invoke-virtual {v0}, Lpq/c;->c()Lvr/a;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 256
    .line 257
    new-instance v0, Lcom/transsion/shorttv/viewmodel/j;

    .line 258
    .line 259
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/j;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R:Lkotlin/Lazy;

    .line 267
    .line 268
    new-instance v0, Lcom/transsion/shorttv/viewmodel/k;

    .line 269
    .line 270
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/k;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S:Lkotlin/Lazy;

    .line 278
    .line 279
    new-instance v0, Lcom/transsion/shorttv/viewmodel/l;

    .line 280
    .line 281
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/l;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T:Lkotlin/Lazy;

    .line 289
    .line 290
    new-instance v0, Lcom/transsion/shorttv/viewmodel/m;

    .line 291
    .line 292
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/m;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U:Lkotlin/Lazy;

    .line 300
    .line 301
    new-instance v0, Lcom/transsion/shorttv/viewmodel/n;

    .line 302
    .line 303
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/n;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V:Lkotlin/Lazy;

    .line 311
    .line 312
    new-instance v0, Lcom/transsion/shorttv/viewmodel/d;

    .line 313
    .line 314
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/d;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W:Lkotlin/Lazy;

    .line 322
    .line 323
    new-instance v0, Lcom/transsion/shorttv/viewmodel/e;

    .line 324
    .line 325
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/e;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X:Lkotlin/Lazy;

    .line 333
    .line 334
    new-instance v0, Lcom/transsion/shorttv/viewmodel/f;

    .line 335
    .line 336
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/f;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Y:Lkotlin/Lazy;

    .line 344
    .line 345
    new-instance v0, Lcom/transsion/shorttv/viewmodel/g;

    .line 346
    .line 347
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/g;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z:Lkotlin/Lazy;

    .line 355
    .line 356
    new-instance v0, Ljava/util/HashMap;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    .line 362
    .line 363
    new-instance v0, Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .line 367
    .line 368
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 369
    .line 370
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L0(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic F(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M0(Lcom/transsion/shorttv/bean/OperatingResp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X0(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c1(Lcom/transsion/shorttv/bean/OperatingResp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r1(Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p2, p1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;-><init>(Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private static final J(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 7

    .line 1
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getApp(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "adUnlockDao init failed: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v2, "ShortTvViewModel"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 79
    .line 80
    return-object p0
.end method

.method private final L0(Ljava/util/List;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object v4, v3

    .line 78
    check-cast v4, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_1

    .line 93
    .line 94
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-le p1, v0, :cond_4

    .line 127
    .line 128
    const/4 p1, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 p1, 0x0

    .line 131
    :goto_3
    return p1
.end method

.method private final M0(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/transsion/shorttv/bean/OperateItem;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/OperateItem;->setOps(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    check-cast v2, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/transsion/shorttv/bean/BannerData;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/BannerData;->setOps(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/transsion/shorttv/bean/AppointSubject;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv/bean/CustomData;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/CustomData;->getItems()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    check-cast v2, Ljava/lang/Iterable;

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lcom/transsion/shorttv/bean/BannerData;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/BannerData;->setOps(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    check-cast v2, Ljava/lang/Iterable;

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getRankingListData()Lcom/transsion/shorttv/bean/RankingListData;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/RankingListData;->getItems()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    check-cast v2, Ljava/lang/Iterable;

    .line 189
    .line 190
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/transsion/shorttv/bean/RankingListItem;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/RankingListItem;->setOps(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/RankingListItem;->getSubjects()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_6

    .line 218
    .line 219
    check-cast v3, Ljava/lang/Iterable;

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_6

    .line 230
    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_7
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getPlayListData()Lcom/transsion/shorttv/bean/PlayListItem;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/PlayListItem;->setOps(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_8
    return-void
.end method

.method private static final Q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 7

    .line 1
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getApp(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->k0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "favoriteDao init failed: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v2, "ShortTvViewModel"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 79
    .line 80
    return-object p0
.end method

.method private final R(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/shorttv/bean/OperateItem;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/transsion/shorttv/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv/bean/ShortTvItemType;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v1, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Iterable;

    .line 62
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object v4, v3

    .line 83
    check-cast v4, Lcom/transsion/shorttv/bean/BannerData;

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/BannerData;->getType()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sget-object v6, Lcom/transsion/shorttv/constants/BannerType;->GUIDE:Lcom/transsion/shorttv/constants/BannerType;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-ne v5, v6, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    if-eqz v4, :cond_2

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/BannerData;->getType()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    sget-object v5, Lcom/transsion/shorttv/constants/BannerType;->AD:Lcom/transsion/shorttv/constants/BannerType;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-ne v4, v5, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 v2, 0x0

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/bean/BannerBean;->setBanners(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    return-void
.end method

.method private final U()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final V0()Ltr/a;
    .locals 1

    .line 1
    new-instance v0, Ltr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ltr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final X0(Ljava/lang/String;Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v9

    .line 28
    :goto_0
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v3, v9

    .line 48
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "--------putEpisodeMap subjectId"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "----ep:"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "-"

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x0

    .line 83
    const-string v3, "ShortTvViewModel"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v2, v8

    .line 87
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    check-cast v2, Ljava/util/Collection;

    .line 93
    .line 94
    if-eqz v2, :cond_d

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_2
    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroidx/lifecycle/b0;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    new-instance v2, Landroidx/lifecycle/b0;

    .line 122
    .line 123
    invoke-direct {v2}, Landroidx/lifecycle/b0;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v3, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    .line 136
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-object v1, v2

    .line 140
    :goto_2
    if-eqz v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object v9, v2

    .line 147
    check-cast v9, Ljava/util/List;

    .line 148
    .line 149
    :cond_4
    if-nez v9, :cond_5

    .line 150
    .line 151
    new-instance v9, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-virtual {v1, v9}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    const/4 v7, 0x0

    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/util/List;

    .line 169
    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 177
    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    move v10, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    move v10, v7

    .line 187
    :goto_3
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    move v11, v1

    .line 200
    goto :goto_4

    .line 201
    :cond_7
    move v11, v7

    .line 202
    :goto_4
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/Boolean;

    .line 209
    .line 210
    if-eqz v1, :cond_8

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    move v12, v1

    .line 217
    goto :goto_5

    .line 218
    :cond_8
    move v12, v7

    .line 219
    :goto_5
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v3, "putEpisodeMap isNeedPlayCurEp"

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v3, ",playingEp: "

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " "

    .line 247
    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const/4 v5, 0x4

    .line 256
    const/4 v6, 0x0

    .line 257
    const-string v2, "ShortTvViewModel"

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    move-object v1, v8

    .line 261
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_b

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 279
    .line 280
    if-eqz v12, :cond_9

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iget-object v4, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 287
    .line 288
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Ljava/lang/Integer;

    .line 293
    .line 294
    if-nez v4, :cond_a

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-ne v3, v4, :cond_9

    .line 302
    .line 303
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 304
    .line 305
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v4, "AudioTrack change----play  ep:"

    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    const/16 v17, 0x4

    .line 327
    .line 328
    const/16 v18, 0x0

    .line 329
    .line 330
    const-string v14, "ShortTvViewModel"

    .line 331
    .line 332
    const/16 v16, 0x0

    .line 333
    .line 334
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    .line 338
    .line 339
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_b
    if-le v10, v11, :cond_c

    .line 350
    .line 351
    move-object/from16 v1, p2

    .line 352
    .line 353
    check-cast v1, Ljava/util/Collection;

    .line 354
    .line 355
    invoke-interface {v9, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_c
    move-object/from16 v1, p2

    .line 360
    .line 361
    check-cast v1, Ljava/util/Collection;

    .line 362
    .line 363
    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    .line 365
    .line 366
    :cond_d
    :goto_7
    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c1(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getBanners()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "Cache--\u4fdd\u5b58\u8fd0\u8425\u4f4d\u7f13\u5b58 banner:"

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x0

    .line 54
    const-string v3, "ShortTvViewModel"

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v2 .. v7}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R(Lcom/transsion/shorttv/bean/OperatingResp;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/google/gson/Gson;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "short_tv_operating_data"

    .line 79
    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/l;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/e;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->b()Lur/d;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->j()Lur/e;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public static synthetic j()Ltr/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V0()Ltr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final j1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->e()Lur/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/i;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k0()Ltr/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltr/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final k1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->f()Lur/g;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final l1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->a()Lur/h;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->l()Lur/i;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final n1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->d()Lur/k;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final o1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->i()Lur/a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final p1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lur/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lvr/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lvr/a;->c()Lur/l;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p0(Ljava/lang/String;IZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private final r1(Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v3, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateFavorite$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateFavorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic s(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ltr/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k0()Ltr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a:Lsr/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final A0()Lur/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/h;

    .line 8
    .line 9
    return-object v0
.end method

.method public final B0()Lur/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C0()Lur/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/k;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D0()Lur/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final E0()Lur/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K(IJ)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public final K0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-keys>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v3, v2

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static {v3, p1, v6, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final N0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final O0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final P(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    if-nez v5, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    new-instance v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v0, v9

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v10, 0x3

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v6, v7

    .line 39
    move-object v7, p1

    .line 40
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final P0(Landroid/content/Context;)V
    .locals 13

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const-string v0, "Cache---\u5f00\u59cb\u5904\u7406\u7f13\u5b58"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "ShortTvViewModel"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    new-instance v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$loadCache$1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {v10, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$loadCache$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v11, 0x2

    .line 37
    const/4 v12, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final Q0(Ljava/util/Set;)V
    .locals 1

    .line 1
    const-string v0, "eps"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p1, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final R0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/Subject;->setPaid(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final S(ILcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lcom/transsion/shorttv/bean/Subject;IZ)I
    .locals 3

    .line 1
    sget-object v0, Lpq/c;->a:Lpq/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpq/c;->b()Lpq/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lpq/b;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    if-nez p1, :cond_7

    .line 15
    .line 16
    if-nez v1, :cond_7

    .line 17
    .line 18
    move p1, v2

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getEp()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move-object p2, p1

    .line 38
    :goto_1
    if-eqz p2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    if-eqz p3, :cond_4

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_4
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lpq/c;->b()Lpq/b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lpq/b;->b()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move p1, v2

    .line 66
    :goto_2
    if-ltz p4, :cond_7

    .line 67
    .line 68
    if-eqz p5, :cond_6

    .line 69
    .line 70
    if-eqz p2, :cond_6

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eq p2, p4, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    move p1, p4

    .line 80
    :cond_7
    :goto_3
    return p1
.end method

.method public final S0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final T(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {v4, p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final U0(Ljava/lang/String;ILpn/f;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "subjectId"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p0

    .line 11
    .line 12
    iget-object v3, v2, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/lifecycle/b0;

    .line 19
    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_6

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 47
    .line 48
    sget-object v4, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "k_short_tv_resolution"

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-virtual {v4, v5, v6}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    check-cast v5, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    move-object v8, v7

    .line 90
    check-cast v8, Lcom/transsion/shorttv/bean/Video;

    .line 91
    .line 92
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const/4 v7, 0x0

    .line 108
    :goto_1
    check-cast v7, Lcom/transsion/shorttv/bean/Video;

    .line 109
    .line 110
    if-eqz v7, :cond_0

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-interface/range {p3 .. p3}, Lpn/f;->b()Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    :cond_3
    if-nez v6, :cond_0

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    sub-int v4, v4, p2

    .line 135
    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-lez v4, :cond_4

    .line 143
    .line 144
    sub-int v3, v3, p2

    .line 145
    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    :goto_2
    move v11, v3

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    add-int v3, v3, p2

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :goto_3
    if-eqz v1, :cond_0

    .line 154
    .line 155
    new-instance v3, Lgn/e;

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    if-nez v4, :cond_5

    .line 166
    .line 167
    const-string v4, ""

    .line 168
    .line 169
    :cond_5
    move-object v10, v4

    .line 170
    const/16 v14, 0x18

    .line 171
    .line 172
    const/4 v15, 0x0

    .line 173
    const/4 v12, 0x0

    .line 174
    const/4 v13, 0x0

    .line 175
    move-object v8, v3

    .line 176
    invoke-direct/range {v8 .. v15}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_6
    return-void
.end method

.method public final V()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    :goto_0
    return-wide v0
.end method

.method public final W0(Ljava/lang/String;ILpn/f;)V
    .locals 12

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/lifecycle/b0;

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    check-cast v2, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v4, v3

    .line 87
    check-cast v4, Lcom/transsion/shorttv/bean/Video;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v3, 0x0

    .line 101
    :goto_1
    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    .line 102
    .line 103
    if-eqz v3, :cond_0

    .line 104
    .line 105
    if-eqz p3, :cond_3

    .line 106
    .line 107
    invoke-interface {p3}, Lpn/f;->b()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    const/4 v2, 0x0

    .line 123
    :goto_2
    if-nez v2, :cond_0

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    sub-int/2addr v2, p2

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-lez v2, :cond_4

    .line 137
    .line 138
    sub-int/2addr v1, p2

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    :goto_3
    move v7, v1

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    add-int/2addr v1, p2

    .line 144
    goto :goto_3

    .line 145
    :goto_4
    if-eqz p3, :cond_0

    .line 146
    .line 147
    new-instance v1, Lgn/e;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-nez v2, :cond_5

    .line 158
    .line 159
    const-string v2, ""

    .line 160
    .line 161
    :cond_5
    move-object v6, v2

    .line 162
    const/16 v10, 0x18

    .line 163
    .line 164
    const/4 v11, 0x0

    .line 165
    const/4 v8, 0x0

    .line 166
    const/4 v9, 0x0

    .line 167
    move-object v4, v1

    .line 168
    invoke-direct/range {v4 .. v11}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p3, v1}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_6
    return-void
.end method

.method public final X()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    .line 13
    .line 14
    iput-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C:Landroidx/lifecycle/b0;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final Z()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final a0()Landroidx/lifecycle/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/lifecycle/b0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v7

    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "will saveAdUnlockedEps, eps: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const-string v2, "ShortTvViewModel"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    new-instance v11, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveAdUnlockedEps$1;

    .line 83
    .line 84
    invoke-direct {v11, p1, v0, p0, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveAdUnlockedEps$1;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    const/4 v12, 0x3

    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method public final b1(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;J)V
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    sget-object v0, Ldr/b;->a:Ldr/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ldr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v3, v0

    .line 26
    move-object v4, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-wide v7, p3

    .line 30
    invoke-direct/range {v3 .. v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v4, v0

    .line 37
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final c0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d1(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lnr/k;

    .line 31
    .line 32
    instance-of v3, v2, Lnr/e;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v2, Lnr/e;

    .line 37
    .line 38
    invoke-virtual {v2}, Lnr/e;->c()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ne v2, p1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, -0x1

    .line 49
    :goto_1
    if-gez v1, :cond_3

    .line 50
    .line 51
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "scrollToEp\uff1a"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " \u5f53\u524d\u4e0d\u5b58\u5728\u8be5\u96c6"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v6, 0x4

    .line 76
    const/4 v7, 0x0

    .line 77
    const-string v3, "ShortTvViewModel"

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eq p1, v0, :cond_5

    .line 100
    .line 101
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public final e0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final g0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final h0(I)V
    .locals 10

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "key_short_tv_operation_version"

    .line 23
    .line 24
    const-string v3, ""

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1;

    .line 34
    .line 35
    invoke-direct {v7, p0, p1, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;ILkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final i0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVDubInfo$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVDubInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final o0()V
    .locals 7

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const-string v1, "1"

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q0(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final p0(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "nextPage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move v5, p2

    .line 17
    move v6, p3

    .line 18
    move-object v7, p4

    .line 19
    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v4, v0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final q1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r0(Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    const-string v0, "nextPage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setPerPage(I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Ljg/b;->a:Ljg/b$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljg/b$a;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVTrending$1;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-direct {v4, v0, p0, p3, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVTrending$1;-><init>(Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final s0()Lur/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s1(Lcom/transsion/shorttv/bean/Subject;Lnr/e;J)V
    .locals 27

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    :cond_0
    move-object/from16 v0, p0

    .line 6
    .line 7
    goto/16 :goto_9

    .line 8
    .line 9
    :cond_1
    new-instance v13, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Lnr/e;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual/range {p2 .. p2}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move-object v2, v0

    .line 29
    goto :goto_2

    .line 30
    :cond_3
    :goto_1
    const-string v0, ""

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lnr/e;->c()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual/range {p2 .. p2}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_3
    move v4, v0

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    const/4 v0, 0x1

    .line 50
    goto :goto_3

    .line 51
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v10, v0

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move-object v10, v6

    .line 77
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v11, v0

    .line 88
    goto :goto_6

    .line 89
    :cond_6
    move-object v11, v6

    .line 90
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v12, v0

    .line 101
    goto :goto_7

    .line 102
    :cond_7
    move-object v12, v6

    .line 103
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object/from16 v19, v0

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_8
    move-object/from16 v19, v6

    .line 129
    .line 130
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v14

    .line 134
    const/16 v17, 0x2000

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    move-object v0, v13

    .line 141
    move-wide/from16 v6, p3

    .line 142
    .line 143
    move-object/from16 v20, v13

    .line 144
    .line 145
    move-object/from16 v13, v19

    .line 146
    .line 147
    invoke-direct/range {v0 .. v18}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    .line 149
    .line 150
    sget-object v21, Lwf/a;->a:Lwf/a$a;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "updateLiveHistory:"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-object/from16 v1, v20

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v23

    .line 171
    const/16 v25, 0x4

    .line 172
    .line 173
    const/16 v26, 0x0

    .line 174
    .line 175
    const-string v22, "ShortTvViewModel"

    .line 176
    .line 177
    const/16 v24, 0x0

    .line 178
    .line 179
    invoke-static/range {v21 .. v26}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v0, p0

    .line 183
    .line 184
    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    new-instance v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateLiveHistory$1;

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    move-object v2, v10

    .line 201
    move-object/from16 v3, p0

    .line 202
    .line 203
    move-object/from16 v4, p1

    .line 204
    .line 205
    move-object/from16 v5, p2

    .line 206
    .line 207
    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateLiveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lnr/e;JLkotlin/coroutines/Continuation;)V

    .line 208
    .line 209
    .line 210
    const/4 v7, 0x2

    .line 211
    const/4 v5, 0x0

    .line 212
    move-object v3, v1

    .line 213
    move-object v4, v9

    .line 214
    move-object v6, v10

    .line 215
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 216
    .line 217
    .line 218
    :goto_9
    return-void
.end method

.method public final t0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move/from16 v6, p3

    .line 16
    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x2

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 41
    .line 42
    const/4 v14, 0x4

    .line 43
    const/4 v15, 0x0

    .line 44
    const-string v11, "ShortTvViewModel"

    .line 45
    .line 46
    const-string v12, "getShortTvEpisodes \u5df2\u7ecf\u663e\u793a\u5168\u90e8\u6570\u636e"

    .line 47
    .line 48
    const/4 v13, 0x0

    .line 49
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    iget-object v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v2}, Lkotlinx/coroutines/t1;->isActive()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v0, v2

    .line 76
    :goto_1
    if-nez v0, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    move-object v3, v0

    .line 80
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v4, v0

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move-object v4, v2

    .line 97
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    new-instance v13, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    move-object v0, v13

    .line 105
    move-object/from16 v2, p0

    .line 106
    .line 107
    move-object/from16 v5, p2

    .line 108
    .line 109
    move/from16 v6, p3

    .line 110
    .line 111
    move/from16 v7, p4

    .line 112
    .line 113
    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;-><init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V

    .line 114
    .line 115
    .line 116
    const/4 v14, 0x3

    .line 117
    const/4 v15, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    .line 125
    .line 126
    return-void
.end method

.method public final w0(Ljava/lang/String;I)V
    .locals 12

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p2, -0x1

    .line 7
    .line 8
    div-int/lit8 v1, v0, 0x14

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x14

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    add-int/lit8 v4, v1, 0x1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Integer;

    .line 37
    .line 38
    const-string v3, "getShortTvEpisodes start\uff1a"

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_4

    .line 49
    .line 50
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, " data not null"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const/4 v10, 0x4

    .line 73
    const/4 v11, 0x0

    .line 74
    const-string v7, "ShortTvViewModel"

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/List;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lnr/k;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move-object v0, v2

    .line 99
    :goto_0
    instance-of v1, v0, Lnr/e;

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    sget-object v1, Ldr/b;->a:Ldr/b;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 106
    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    .line 114
    .line 115
    :cond_2
    check-cast v0, Lnr/e;

    .line 116
    .line 117
    invoke-virtual {v0}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1, v2, v3}, Ldr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_3

    .line 126
    .line 127
    invoke-static {v0}, Lnr/l;->b(Lnr/e;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    move-object v3, v1

    .line 141
    move v5, p2

    .line 142
    move-object v6, p0

    .line 143
    move-object v7, p1

    .line 144
    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;-><init>(IILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 145
    .line 146
    .line 147
    const/4 v9, 0x3

    .line 148
    const/4 v10, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v7, 0x0

    .line 151
    move-object v5, v0

    .line 152
    move-object v8, v1

    .line 153
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 154
    .line 155
    .line 156
    :cond_3
    return-void

    .line 157
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-ne v0, v2, :cond_6

    .line 165
    .line 166
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, "  loading"

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const/4 v9, 0x4

    .line 189
    const/4 v10, 0x0

    .line 190
    const-string v6, "ShortTvViewModel"

    .line 191
    .line 192
    const/4 v8, 0x0

    .line 193
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    move-object v3, v1

    .line 229
    move-object v5, p0

    .line 230
    move-object v6, p1

    .line 231
    move v7, p2

    .line 232
    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;-><init>(ILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 233
    .line 234
    .line 235
    const/4 v9, 0x3

    .line 236
    const/4 v10, 0x0

    .line 237
    const/4 v6, 0x0

    .line 238
    const/4 v7, 0x0

    .line 239
    move-object v5, v0

    .line 240
    move-object v8, v1

    .line 241
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 242
    .line 243
    .line 244
    :goto_3
    return-void
.end method

.method public final x0()Lur/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Y:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final y0()Lur/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public final z0()Lur/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/g;

    .line 8
    .line 9
    return-object v0
.end method
