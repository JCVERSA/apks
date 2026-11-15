.class public final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;
    }
.end annotation


# static fields
.field public static final M:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;


# instance fields
.field private final A:Lkotlin/Lazy;

.field private final B:Lkotlin/Lazy;

.field private final C:Lkotlin/Lazy;

.field private final D:Lkotlin/Lazy;

.field private final E:Lkotlin/Lazy;

.field private final F:Ljava/util/List;

.field private final G:Ljava/util/List;

.field private H:Ljava/lang/String;

.field private I:Ljava/util/List;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private final a:Lus/a;

.field private final b:Lkotlinx/coroutines/k1;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/LiveData;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/LiveData;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/LiveData;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/LiveData;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/LiveData;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/LiveData;

.field private final t:Landroidx/lifecycle/b0;

.field private u:Landroidx/lifecycle/LiveData;

.field private final v:Landroidx/lifecycle/b0;

.field private final w:Landroidx/lifecycle/LiveData;

.field private final x:Lws/a;

.field private final y:Lkotlin/Lazy;

.field private final z:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->M:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;

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
    const-class v1, Lus/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lus/a;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->a:Lus/a;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "newSingleThreadExecutor(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->b:Lkotlinx/coroutines/k1;

    .line 34
    .line 35
    new-instance v0, Landroidx/lifecycle/b0;

    .line 36
    .line 37
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c:Landroidx/lifecycle/b0;

    .line 41
    .line 42
    new-instance v0, Landroidx/lifecycle/b0;

    .line 43
    .line 44
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    .line 48
    .line 49
    new-instance v0, Landroidx/lifecycle/b0;

    .line 50
    .line 51
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 55
    .line 56
    new-instance v0, Landroidx/lifecycle/b0;

    .line 57
    .line 58
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    .line 62
    .line 63
    new-instance v0, Landroidx/lifecycle/b0;

    .line 64
    .line 65
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    .line 69
    .line 70
    new-instance v0, Landroidx/lifecycle/b0;

    .line 71
    .line 72
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/b0;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    new-instance v0, Landroidx/lifecycle/b0;

    .line 80
    .line 81
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j:Landroidx/lifecycle/b0;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k:Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    new-instance v0, Landroidx/lifecycle/b0;

    .line 89
    .line 90
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    .line 96
    .line 97
    new-instance v0, Landroidx/lifecycle/b0;

    .line 98
    .line 99
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/LiveData;

    .line 105
    .line 106
    new-instance v0, Landroidx/lifecycle/b0;

    .line 107
    .line 108
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/b0;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/LiveData;

    .line 114
    .line 115
    new-instance v0, Landroidx/lifecycle/b0;

    .line 116
    .line 117
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/LiveData;

    .line 123
    .line 124
    new-instance v0, Landroidx/lifecycle/b0;

    .line 125
    .line 126
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/b0;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->u:Landroidx/lifecycle/LiveData;

    .line 132
    .line 133
    new-instance v0, Landroidx/lifecycle/b0;

    .line 134
    .line 135
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v:Landroidx/lifecycle/b0;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/LiveData;

    .line 141
    .line 142
    sget-object v0, Lcs/a;->a:Lcs/a;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcs/a;->b()Lws/a;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 149
    .line 150
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/b;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/b;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y:Lkotlin/Lazy;

    .line 160
    .line 161
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/c;

    .line 162
    .line 163
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/c;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z:Lkotlin/Lazy;

    .line 171
    .line 172
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/d;

    .line 173
    .line 174
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/d;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->A:Lkotlin/Lazy;

    .line 182
    .line 183
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/e;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/e;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B:Lkotlin/Lazy;

    .line 193
    .line 194
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/f;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/f;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->C:Lkotlin/Lazy;

    .line 204
    .line 205
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/g;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/g;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D:Lkotlin/Lazy;

    .line 215
    .line 216
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/h;

    .line 217
    .line 218
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/h;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E:Lkotlin/Lazy;

    .line 226
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    .line 233
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    .line 240
    .line 241
    const-string v0, ""

    .line 242
    .line 243
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    .line 244
    .line 245
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Z(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/i;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lus/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->a:Lus/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final j0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->b()Lvs/c;

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

.method public static final synthetic k(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final k0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->e()Lvs/d;

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

.method public static final synthetic l(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final l0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->f()Lvs/e;

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

.method private static final m0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->a()Lvs/f;

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

.method private static final n0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->d()Lvs/h;

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

.method private static final o0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->i()Lvs/a;

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

.method private static final p0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lvs/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Lws/a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lws/a;->c()Lvs/i;

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


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->u:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->O()Lvs/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lvs/f;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public final D()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final G()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final H(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    const-string p2, "nextPage"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final L()Lvs/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M()Lvs/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->A:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N()Lvs/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public final O()Lvs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->C:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P()Lvs/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/h;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Q()Lvs/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R()Lvs/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvs/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public final V(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    xor-int/lit8 v3, v2, 0x1

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setHasLike(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    :goto_0
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const/4 p1, -0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    :goto_1
    int-to-long v5, p1

    .line 61
    add-long/2addr v3, v5

    .line 62
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setLikeNum(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    .line 70
    .line 71
    xor-int/lit8 v1, v2, 0x1

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_liked:I

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_liked_removed:I

    .line 86
    .line 87
    :goto_2
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$like$1;

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-direct {v6, p0, v0, v2, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$like$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    const/4 v7, 0x3

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_3
    return-void
.end method

.method public final W(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

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

.method public final Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/t1;
    .locals 8

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p0

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v7

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final Z(Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->b:Lkotlinx/coroutines/k1;

    .line 6
    .line 7
    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v2, v8

    .line 11
    move-object v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, p3

    .line 14
    move-object v6, p0

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;-><init>(Ljava/lang/String;IILcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v3, v8

    .line 22
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;J)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

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
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$saveHistory$1;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v2, v8

    .line 16
    move-object v3, p0

    .line 17
    move-object v4, p1

    .line 18
    move-wide v5, p2

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;JLkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move-object v3, v8

    .line 26
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c0(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, -0x1

    .line 31
    :goto_1
    if-gez v1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "scrollToEp\uff1a"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " \u5f53\u524d\u4e0d\u5b58\u5728\u8be5\u96c6"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v5, 0x4

    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v2, "ShortTvViewModel"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eq p1, v0, :cond_4

    .line 90
    .line 91
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void
.end method

.method public final d0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final f0(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public final i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

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

.method public final n(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    xor-int/lit8 v3, v0, 0x1

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setHasFavorite(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    :goto_0
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/4 p1, -0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 p1, 0x1

    .line 71
    :goto_1
    int-to-long v5, p1

    .line 72
    add-long/2addr v3, v5

    .line 73
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v2, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setFavoriteNum(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/b0;

    .line 81
    .line 82
    xor-int/lit8 v2, v0, 0x1

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_removed:I

    .line 97
    .line 98
    :goto_2
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v5, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$favorite$1;

    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    invoke-direct {v5, p0, v1, v0, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    const/4 v6, 0x3

    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 116
    .line 117
    .line 118
    :cond_6
    return-void
.end method

.method public final o(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    xor-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->setHasSubscribe(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    xor-int/lit8 v2, v1, 0x1

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_subscribe:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_unsubscribe:I

    .line 53
    .line 54
    :goto_0
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v5, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$follow$1;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-direct {v5, p0, v0, v1, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$follow$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/b0;

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

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iput v3, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    .line 60
    .line 61
    invoke-interface {p2, p1, v0}, Lvs/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 p2, 0x0

    .line 85
    :cond_5
    :goto_2
    return-object p2
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
