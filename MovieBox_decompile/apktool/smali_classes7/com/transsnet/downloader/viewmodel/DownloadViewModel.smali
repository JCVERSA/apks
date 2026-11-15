.class public final Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Ljava/util/Map;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Lkotlin/Lazy;

.field private final u:Lkotlin/Lazy;

.field private final v:Lkotlin/Lazy;

.field private final w:Lkotlin/Lazy;

.field private final x:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->a:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/transsnet/downloader/viewmodel/k;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/k;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->b:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance v0, Lcom/transsnet/downloader/viewmodel/x;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/x;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->c:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v0, Lcom/transsnet/downloader/viewmodel/y;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/y;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->e:Lkotlin/Lazy;

    .line 44
    .line 45
    new-instance v0, Lcom/transsnet/downloader/viewmodel/z;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/z;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->f:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance v0, Lcom/transsnet/downloader/viewmodel/l;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/l;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->g:Lkotlin/Lazy;

    .line 66
    .line 67
    new-instance v0, Lcom/transsnet/downloader/viewmodel/m;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/m;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->h:Lkotlin/Lazy;

    .line 77
    .line 78
    new-instance v0, Lcom/transsnet/downloader/viewmodel/n;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/n;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->i:Lkotlin/Lazy;

    .line 88
    .line 89
    new-instance v0, Lcom/transsnet/downloader/viewmodel/o;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/o;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->j:Lkotlin/Lazy;

    .line 99
    .line 100
    new-instance v0, Lcom/transsnet/downloader/viewmodel/p;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/p;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->k:Lkotlin/Lazy;

    .line 110
    .line 111
    new-instance v0, Lcom/transsnet/downloader/viewmodel/q;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/q;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->l:Lkotlin/Lazy;

    .line 121
    .line 122
    new-instance v0, Lcom/transsnet/downloader/viewmodel/r;

    .line 123
    .line 124
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/r;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->m:Lkotlin/Lazy;

    .line 132
    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    .line 139
    .line 140
    new-instance v0, Landroidx/lifecycle/b0;

    .line 141
    .line 142
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    .line 146
    .line 147
    new-instance v0, Landroidx/lifecycle/b0;

    .line 148
    .line 149
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    .line 153
    .line 154
    new-instance v0, Landroidx/lifecycle/b0;

    .line 155
    .line 156
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    .line 160
    .line 161
    new-instance v0, Landroidx/lifecycle/b0;

    .line 162
    .line 163
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    .line 167
    .line 168
    new-instance v0, Landroidx/lifecycle/b0;

    .line 169
    .line 170
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    .line 174
    .line 175
    new-instance v0, Lcom/transsnet/downloader/viewmodel/s;

    .line 176
    .line 177
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/s;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t:Lkotlin/Lazy;

    .line 185
    .line 186
    new-instance v0, Lcom/transsnet/downloader/viewmodel/t;

    .line 187
    .line 188
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/t;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u:Lkotlin/Lazy;

    .line 196
    .line 197
    new-instance v0, Lcom/transsnet/downloader/viewmodel/u;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/u;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v:Lkotlin/Lazy;

    .line 207
    .line 208
    new-instance v0, Lcom/transsnet/downloader/viewmodel/v;

    .line 209
    .line 210
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/v;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w:Lkotlin/Lazy;

    .line 218
    .line 219
    new-instance v0, Lcom/transsnet/downloader/viewmodel/w;

    .line 220
    .line 221
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/w;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x:Lkotlin/Lazy;

    .line 229
    .line 230
    return-void
.end method

.method public static final synthetic A(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o0(Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final A0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic B(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final B0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic C(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final C0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final D(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->X(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t0(Ljava/util/Map;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private static final D0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final E()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final E0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final F()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->M(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final W()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final X(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v1, "getString(...)"

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_3
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->VSHOW:Lcom/transsion/moviedetailapi/SubjectType;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_4
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eq p1, v0, :cond_9

    .line 105
    .line 106
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ne p1, v0, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ne p1, v0, :cond_6

    .line 122
    .line 123
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-ne p1, v0, :cond_7

    .line 144
    .line 145
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SPORT:Lcom/transsion/moviedetailapi/SubjectType;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-ne p1, v0, :cond_8

    .line 166
    .line 167
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget v0, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_2
    return-object p1
.end method

.method private final Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    if-eqz p1, :cond_d

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MOVIE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_3
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_4
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SPORT:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_6
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->ROOM:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_room:I

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_7
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->NOVEL:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_8

    .line 213
    .line 214
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_novel:I

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_8
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->LIVE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_9

    .line 240
    .line 241
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_live:I

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_9
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->KIDS:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_kids:I

    .line 272
    .line 273
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_a
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->RECREATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_recreation:I

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_b
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->POST:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_c

    .line 318
    .line 319
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_post:I

    .line 324
    .line 325
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    .line 338
    .line 339
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_0
    return-object p1

    .line 347
    :cond_d
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    .line 352
    .line 353
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object p1
.end method

.method private final Z()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->E0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->A0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->F()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s0()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->C0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->B0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->E()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->D0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->y0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final o0(Ljava/util/List;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    .line 1
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    new-instance v15, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    move-object v1, v15

    .line 10
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const-wide/16 v93, 0x0

    .line 15
    .line 16
    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 25
    .line 26
    .line 27
    move-result-wide v19

    .line 28
    const v91, 0xffff

    .line 29
    .line 30
    .line 31
    const/16 v92, 0x0

    .line 32
    .line 33
    const-string v2, "series"

    .line 34
    .line 35
    const-string v3, "series"

    .line 36
    .line 37
    const-string v4, ""

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const-wide/16 v12, 0x0

    .line 44
    .line 45
    const/4 v14, 0x0

    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    move-object/from16 v95, v15

    .line 49
    .line 50
    move/from16 v15, v16

    .line 51
    .line 52
    const-wide/16 v17, 0x0

    .line 53
    .line 54
    const/16 v21, 0x0

    .line 55
    .line 56
    const/16 v22, 0x0

    .line 57
    .line 58
    const/16 v23, 0x0

    .line 59
    .line 60
    const/16 v24, 0x0

    .line 61
    .line 62
    const/16 v25, 0x0

    .line 63
    .line 64
    const/16 v26, 0x0

    .line 65
    .line 66
    const/16 v27, 0x0

    .line 67
    .line 68
    const/16 v28, 0x0

    .line 69
    .line 70
    const/16 v29, 0x0

    .line 71
    .line 72
    const/16 v30, 0x0

    .line 73
    .line 74
    const/16 v31, 0x0

    .line 75
    .line 76
    const/16 v32, 0x0

    .line 77
    .line 78
    const/16 v33, 0x0

    .line 79
    .line 80
    const/16 v34, 0x0

    .line 81
    .line 82
    const/16 v35, 0x0

    .line 83
    .line 84
    const-wide/16 v36, 0x0

    .line 85
    .line 86
    const/16 v38, 0x0

    .line 87
    .line 88
    const/16 v39, 0x0

    .line 89
    .line 90
    const/16 v40, 0x0

    .line 91
    .line 92
    const/16 v41, 0x0

    .line 93
    .line 94
    const-wide/16 v42, 0x0

    .line 95
    .line 96
    const/16 v44, 0x0

    .line 97
    .line 98
    const/16 v45, 0x0

    .line 99
    .line 100
    const-wide/16 v46, 0x0

    .line 101
    .line 102
    const/16 v48, 0x0

    .line 103
    .line 104
    const-wide/16 v49, 0x0

    .line 105
    .line 106
    const/16 v51, 0x0

    .line 107
    .line 108
    const/16 v52, 0x0

    .line 109
    .line 110
    const/16 v53, 0x0

    .line 111
    .line 112
    const/16 v54, 0x0

    .line 113
    .line 114
    const/16 v55, 0x0

    .line 115
    .line 116
    const/16 v56, 0x0

    .line 117
    .line 118
    const/16 v57, 0x0

    .line 119
    .line 120
    const/16 v58, 0x0

    .line 121
    .line 122
    const/16 v59, 0x0

    .line 123
    .line 124
    const/16 v60, 0x0

    .line 125
    .line 126
    const/16 v61, 0x0

    .line 127
    .line 128
    const/16 v62, 0x0

    .line 129
    .line 130
    const/16 v63, 0x0

    .line 131
    .line 132
    const/16 v64, 0x0

    .line 133
    .line 134
    const/16 v65, 0x0

    .line 135
    .line 136
    const/16 v66, 0x0

    .line 137
    .line 138
    const/16 v67, 0x0

    .line 139
    .line 140
    const/16 v68, 0x0

    .line 141
    .line 142
    const/16 v69, 0x0

    .line 143
    .line 144
    const/16 v70, 0x0

    .line 145
    .line 146
    const/16 v71, 0x0

    .line 147
    .line 148
    const/16 v72, 0x0

    .line 149
    .line 150
    const/16 v73, 0x0

    .line 151
    .line 152
    const/16 v74, 0x0

    .line 153
    .line 154
    const/16 v75, 0x0

    .line 155
    .line 156
    const/16 v76, 0x0

    .line 157
    .line 158
    const/16 v77, 0x0

    .line 159
    .line 160
    const/16 v78, 0x0

    .line 161
    .line 162
    const/16 v79, 0x0

    .line 163
    .line 164
    const/16 v80, 0x0

    .line 165
    .line 166
    const/16 v81, 0x0

    .line 167
    .line 168
    const/16 v82, 0x0

    .line 169
    .line 170
    const/16 v83, 0x0

    .line 171
    .line 172
    const/16 v84, 0x0

    .line 173
    .line 174
    const/16 v85, 0x0

    .line 175
    .line 176
    const/16 v86, 0x0

    .line 177
    .line 178
    const/16 v87, 0x0

    .line 179
    .line 180
    const/16 v88, 0x0

    .line 181
    .line 182
    const v89, -0x8220

    .line 183
    .line 184
    .line 185
    const/16 v90, -0x1

    .line 186
    .line 187
    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    .line 189
    .line 190
    const/16 v1, 0xa

    .line 191
    .line 192
    move-object/from16 v2, v95

    .line 193
    .line 194
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    move-object/from16 v3, p1

    .line 202
    .line 203
    check-cast v3, Ljava/util/Collection;

    .line 204
    .line 205
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    .line 207
    .line 208
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const/4 v3, 0x0

    .line 213
    move-object v12, v0

    .line 214
    move v4, v3

    .line 215
    move v5, v4

    .line 216
    move-wide/from16 v6, v93

    .line 217
    .line 218
    move-wide v8, v6

    .line 219
    move-wide v10, v8

    .line 220
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    if-eqz v13, :cond_5

    .line 225
    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    check-cast v13, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 231
    .line 232
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    const/16 v15, 0xe

    .line 237
    .line 238
    const/16 v16, 0x1

    .line 239
    .line 240
    if-ne v14, v15, :cond_0

    .line 241
    .line 242
    move/from16 v4, v16

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-eqz v14, :cond_1

    .line 250
    .line 251
    move/from16 v3, v16

    .line 252
    .line 253
    :cond_1
    if-nez v5, :cond_2

    .line 254
    .line 255
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-nez v14, :cond_2

    .line 260
    .line 261
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    if-eqz v14, :cond_2

    .line 266
    .line 267
    move-object v12, v13

    .line 268
    move/from16 v5, v16

    .line 269
    .line 270
    :cond_2
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    if-eqz v14, :cond_3

    .line 275
    .line 276
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 277
    .line 278
    .line 279
    move-result-wide v14

    .line 280
    goto :goto_1

    .line 281
    :cond_3
    move-wide/from16 v14, v93

    .line 282
    .line 283
    :goto_1
    add-long/2addr v6, v14

    .line 284
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    if-eqz v14, :cond_4

    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v14

    .line 294
    goto :goto_2

    .line 295
    :cond_4
    move-wide/from16 v14, v93

    .line 296
    .line 297
    :goto_2
    add-long/2addr v8, v14

    .line 298
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 299
    .line 300
    .line 301
    move-result-wide v13

    .line 302
    add-long/2addr v10, v13

    .line 303
    goto :goto_0

    .line 304
    :cond_5
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    sub-int/2addr v1, v4

    .line 319
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v10, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionId(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoId(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoType(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setUgcVideoCollectionName(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-object v2
.end method

.method public static synthetic p()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final p0(Ljava/util/List;)V
    .locals 96

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/Collection;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-le v2, v3, :cond_3

    .line 34
    .line 35
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v1, v3, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget v3, Lcom/transsnet/downloader/R$string;->download_series_all_chapters:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    move-object v7, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget v3, Lcom/transsnet/downloader/R$string;->download_series_all_episodes:I

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    const v94, 0xffff

    .line 82
    .line 83
    .line 84
    const/16 v95, 0x0

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    const-wide/16 v15, 0x0

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v18, 0x0

    .line 96
    .line 97
    const/16 v19, 0x0

    .line 98
    .line 99
    const-wide/16 v20, 0x0

    .line 100
    .line 101
    const-wide/16 v22, 0x0

    .line 102
    .line 103
    const/16 v24, 0x0

    .line 104
    .line 105
    const/16 v25, 0x0

    .line 106
    .line 107
    const/16 v26, 0x0

    .line 108
    .line 109
    const/16 v27, 0x0

    .line 110
    .line 111
    const/16 v28, 0x0

    .line 112
    .line 113
    const/16 v29, 0x0

    .line 114
    .line 115
    const/16 v30, 0x0

    .line 116
    .line 117
    const/16 v31, 0x0

    .line 118
    .line 119
    const/16 v32, 0x0

    .line 120
    .line 121
    const/16 v33, 0x0

    .line 122
    .line 123
    const/16 v34, 0x0

    .line 124
    .line 125
    const/16 v35, 0x0

    .line 126
    .line 127
    const/16 v36, 0x0

    .line 128
    .line 129
    const/16 v37, 0x0

    .line 130
    .line 131
    const/16 v38, 0x0

    .line 132
    .line 133
    const-wide/16 v39, 0x0

    .line 134
    .line 135
    const/16 v41, 0x0

    .line 136
    .line 137
    const/16 v42, 0x0

    .line 138
    .line 139
    const/16 v43, 0x0

    .line 140
    .line 141
    const/16 v44, 0x0

    .line 142
    .line 143
    const-wide/16 v45, 0x0

    .line 144
    .line 145
    const/16 v47, 0x0

    .line 146
    .line 147
    const/16 v48, 0x0

    .line 148
    .line 149
    const-wide/16 v49, 0x0

    .line 150
    .line 151
    const/16 v51, 0x0

    .line 152
    .line 153
    const-wide/16 v52, 0x0

    .line 154
    .line 155
    const/16 v54, 0x0

    .line 156
    .line 157
    const/16 v55, 0x0

    .line 158
    .line 159
    const/16 v56, 0x0

    .line 160
    .line 161
    const/16 v57, 0x0

    .line 162
    .line 163
    const/16 v58, 0x0

    .line 164
    .line 165
    const/16 v59, 0x0

    .line 166
    .line 167
    const/16 v60, 0x0

    .line 168
    .line 169
    const/16 v61, 0x0

    .line 170
    .line 171
    const/16 v62, 0x0

    .line 172
    .line 173
    const/16 v63, 0x0

    .line 174
    .line 175
    const/16 v64, 0x0

    .line 176
    .line 177
    const/16 v65, 0x0

    .line 178
    .line 179
    const/16 v66, 0x0

    .line 180
    .line 181
    const/16 v67, 0x0

    .line 182
    .line 183
    const/16 v68, 0x0

    .line 184
    .line 185
    const/16 v69, 0x0

    .line 186
    .line 187
    const/16 v70, 0x0

    .line 188
    .line 189
    const/16 v71, 0x0

    .line 190
    .line 191
    const/16 v72, 0x0

    .line 192
    .line 193
    const/16 v73, 0x0

    .line 194
    .line 195
    const/16 v74, 0x0

    .line 196
    .line 197
    const/16 v75, 0x0

    .line 198
    .line 199
    const/16 v76, 0x0

    .line 200
    .line 201
    const/16 v77, 0x0

    .line 202
    .line 203
    const/16 v78, 0x0

    .line 204
    .line 205
    const/16 v79, 0x0

    .line 206
    .line 207
    const/16 v80, 0x0

    .line 208
    .line 209
    const/16 v81, 0x0

    .line 210
    .line 211
    const/16 v82, 0x0

    .line 212
    .line 213
    const/16 v83, 0x0

    .line 214
    .line 215
    const/16 v84, 0x0

    .line 216
    .line 217
    const/16 v85, 0x0

    .line 218
    .line 219
    const/16 v86, 0x0

    .line 220
    .line 221
    const/16 v87, 0x0

    .line 222
    .line 223
    const/16 v88, 0x0

    .line 224
    .line 225
    const/16 v89, 0x0

    .line 226
    .line 227
    const/16 v90, 0x0

    .line 228
    .line 229
    const/16 v91, 0x0

    .line 230
    .line 231
    const/16 v92, -0x20

    .line 232
    .line 233
    const/16 v93, -0x1

    .line 234
    .line 235
    const-string v5, "allEp"

    .line 236
    .line 237
    const-string v6, "allEp"

    .line 238
    .line 239
    const-string v8, ""

    .line 240
    .line 241
    move-object v4, v2

    .line 242
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 243
    .line 244
    .line 245
    const/16 v1, 0xe

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->G()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final q0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic r(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->D(Ljava/util/List;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final s0()Lcx/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method

.method public static final synthetic t(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final t0(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/MapsKt;->e(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method

.method public static final synthetic u(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final u0()Ljava/util/List;
    .locals 15

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_movie:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_tv:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_music:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_education:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_short_tv:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_sport:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_kids:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_post:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_room:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_recreation:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_live:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_novel:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget v1, Lcom/transsnet/downloader/R$string;->ugc_tab_video:I

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final v0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final w0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->W()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final x0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic y(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final y0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Z()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final z0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->P()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->s:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->q:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M(Z)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadedList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final O()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadingList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getDownloadingList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final Q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S(II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;IILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final U(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getSeriesList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getSeriesList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final V()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->u:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->w:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->m:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f0(I)Landroidx/lifecycle/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/lifecycle/b0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroidx/lifecycle/b0;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-object p1, v0

    .line 41
    :goto_0
    return-object p1
.end method

.method public final g0()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->v:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCCollectionList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCCollectionList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final n0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCSubjectList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getUGCSubjectList$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r0(Lcom/transsion/transfer/impl/entity/FileData;Lkotlin/jvm/functions/Function0;)V
    .locals 102

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "data"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "callback"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "\u4f20\u8f93\u5b8c\u6210\uff0c\u4fdd\u5b58\u5230\u6570\u636e\u5e93, data:"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    filled-new-array {v3}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    const-string v5, "Transfer_d"

    .line 40
    .line 41
    invoke-virtual {v2, v5, v3, v4}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x3

    .line 59
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setFileType(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-virtual {v2, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCover(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v4, 0x0

    .line 99
    .line 100
    invoke-virtual {v2, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x5

    .line 104
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 114
    .line 115
    .line 116
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    new-instance v7, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$1$1;

    .line 125
    .line 126
    invoke-direct {v7, v2, v1, v3}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$1$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 127
    .line 128
    .line 129
    const/4 v8, 0x2

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 166
    .line 167
    .line 168
    move-result-wide v9

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 174
    .line 175
    .line 176
    move-result-wide v15

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v13

    .line 181
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 184
    .line 185
    .line 186
    move-result v60

    .line 187
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 188
    .line 189
    move-object v4, v0

    .line 190
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    const v94, 0xffff

    .line 199
    .line 200
    .line 201
    const/16 v95, 0x0

    .line 202
    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    const/4 v13, 0x0

    .line 206
    const/16 v17, 0x0

    .line 207
    .line 208
    const/16 v18, 0x5

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    const-wide/16 v20, 0x0

    .line 213
    .line 214
    const-wide/16 v22, 0x0

    .line 215
    .line 216
    const/16 v24, 0x0

    .line 217
    .line 218
    const/16 v25, 0x0

    .line 219
    .line 220
    const/16 v26, 0x0

    .line 221
    .line 222
    const/16 v27, 0x0

    .line 223
    .line 224
    const/16 v28, 0x0

    .line 225
    .line 226
    const/16 v29, 0x0

    .line 227
    .line 228
    const/16 v30, 0x0

    .line 229
    .line 230
    const/16 v31, 0x0

    .line 231
    .line 232
    const/16 v32, 0x0

    .line 233
    .line 234
    const/16 v33, 0x0

    .line 235
    .line 236
    const/16 v34, 0x0

    .line 237
    .line 238
    const/16 v35, 0x0

    .line 239
    .line 240
    const/16 v36, 0x0

    .line 241
    .line 242
    const/16 v37, 0x0

    .line 243
    .line 244
    const/16 v38, 0x0

    .line 245
    .line 246
    const-wide/16 v39, 0x0

    .line 247
    .line 248
    const/16 v41, 0x3

    .line 249
    .line 250
    const/16 v42, 0x0

    .line 251
    .line 252
    const/16 v43, 0x0

    .line 253
    .line 254
    const/16 v44, 0x0

    .line 255
    .line 256
    const-wide/16 v45, 0x0

    .line 257
    .line 258
    const/16 v47, 0x0

    .line 259
    .line 260
    const/16 v48, 0x0

    .line 261
    .line 262
    const-wide/16 v49, 0x0

    .line 263
    .line 264
    const/16 v51, 0x0

    .line 265
    .line 266
    const-wide/16 v52, 0x0

    .line 267
    .line 268
    const/16 v54, 0x0

    .line 269
    .line 270
    const/16 v55, 0x0

    .line 271
    .line 272
    const/16 v56, 0x0

    .line 273
    .line 274
    const/16 v57, 0x0

    .line 275
    .line 276
    const/16 v58, 0x0

    .line 277
    .line 278
    const/16 v59, 0x0

    .line 279
    .line 280
    const/16 v61, 0x0

    .line 281
    .line 282
    const/16 v62, 0x0

    .line 283
    .line 284
    const/16 v63, 0x0

    .line 285
    .line 286
    const/16 v64, 0x0

    .line 287
    .line 288
    const/16 v65, 0x0

    .line 289
    .line 290
    const/16 v66, 0x0

    .line 291
    .line 292
    const/16 v67, 0x0

    .line 293
    .line 294
    const/16 v68, 0x0

    .line 295
    .line 296
    const/16 v69, 0x0

    .line 297
    .line 298
    const/16 v70, 0x0

    .line 299
    .line 300
    const/16 v71, 0x0

    .line 301
    .line 302
    const/16 v72, 0x0

    .line 303
    .line 304
    const/16 v73, 0x0

    .line 305
    .line 306
    const/16 v74, 0x0

    .line 307
    .line 308
    const/16 v75, 0x0

    .line 309
    .line 310
    const/16 v76, 0x0

    .line 311
    .line 312
    const/16 v77, 0x0

    .line 313
    .line 314
    const/16 v78, 0x0

    .line 315
    .line 316
    const/16 v79, 0x0

    .line 317
    .line 318
    const/16 v80, 0x0

    .line 319
    .line 320
    const/16 v81, 0x0

    .line 321
    .line 322
    const/16 v82, 0x0

    .line 323
    .line 324
    const/16 v83, 0x0

    .line 325
    .line 326
    const/16 v84, 0x0

    .line 327
    .line 328
    const/16 v85, 0x0

    .line 329
    .line 330
    const/16 v86, 0x0

    .line 331
    .line 332
    const/16 v87, 0x0

    .line 333
    .line 334
    const/16 v88, 0x0

    .line 335
    .line 336
    const/16 v89, 0x0

    .line 337
    .line 338
    const/16 v90, 0x0

    .line 339
    .line 340
    const/16 v91, 0x0

    .line 341
    .line 342
    const/16 v92, -0x16a0

    .line 343
    .line 344
    const v93, -0x10002

    .line 345
    .line 346
    .line 347
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    .line 349
    .line 350
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 351
    .line 352
    .line 353
    move-result-object v96

    .line 354
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 355
    .line 356
    .line 357
    move-result-object v97

    .line 358
    new-instance v2, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$2$1;

    .line 359
    .line 360
    invoke-direct {v2, v0, v1, v3}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$saveTransferData2DB$2$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 361
    .line 362
    .line 363
    const/16 v100, 0x2

    .line 364
    .line 365
    const/16 v101, 0x0

    .line 366
    .line 367
    const/16 v98, 0x0

    .line 368
    .line 369
    move-object/from16 v99, v2

    .line 370
    .line 371
    invoke-static/range {v96 .. v101}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 372
    .line 373
    .line 374
    :goto_0
    return-void
.end method
