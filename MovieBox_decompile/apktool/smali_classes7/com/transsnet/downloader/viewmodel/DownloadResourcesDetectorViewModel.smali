.class public final Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;
    }
.end annotation


# static fields
.field public static final x:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lkotlinx/coroutines/n0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Landroidx/lifecycle/b0;

.field private final u:Landroidx/lifecycle/b0;

.field private final v:Landroidx/lifecycle/b0;

.field private final w:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->x:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/downloader/viewmodel/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/j;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->c:Landroidx/lifecycle/b0;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->d:Landroidx/lifecycle/b0;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->e:Landroidx/lifecycle/b0;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/b0;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->f:Landroidx/lifecycle/b0;

    .line 52
    .line 53
    new-instance v0, Landroidx/lifecycle/b0;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    new-instance v0, Landroidx/lifecycle/b0;

    .line 61
    .line 62
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    .line 66
    .line 67
    new-instance v0, Landroidx/lifecycle/b0;

    .line 68
    .line 69
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i:Landroidx/lifecycle/b0;

    .line 73
    .line 74
    new-instance v0, Landroidx/lifecycle/b0;

    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j:Landroidx/lifecycle/b0;

    .line 80
    .line 81
    new-instance v0, Landroidx/lifecycle/b0;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->k:Landroidx/lifecycle/b0;

    .line 87
    .line 88
    new-instance v0, Landroidx/lifecycle/b0;

    .line 89
    .line 90
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->l:Landroidx/lifecycle/b0;

    .line 94
    .line 95
    new-instance v0, Landroidx/lifecycle/b0;

    .line 96
    .line 97
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m:Landroidx/lifecycle/b0;

    .line 101
    .line 102
    new-instance v0, Landroidx/lifecycle/b0;

    .line 103
    .line 104
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->n:Landroidx/lifecycle/b0;

    .line 108
    .line 109
    new-instance v0, Landroidx/lifecycle/b0;

    .line 110
    .line 111
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->o:Landroidx/lifecycle/b0;

    .line 115
    .line 116
    new-instance v0, Landroidx/lifecycle/b0;

    .line 117
    .line 118
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p:Landroidx/lifecycle/b0;

    .line 122
    .line 123
    new-instance v0, Landroidx/lifecycle/b0;

    .line 124
    .line 125
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    .line 129
    .line 130
    new-instance v0, Landroidx/lifecycle/b0;

    .line 131
    .line 132
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->r:Landroidx/lifecycle/b0;

    .line 136
    .line 137
    new-instance v0, Landroidx/lifecycle/b0;

    .line 138
    .line 139
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    .line 143
    .line 144
    new-instance v0, Landroidx/lifecycle/b0;

    .line 145
    .line 146
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->t:Landroidx/lifecycle/b0;

    .line 150
    .line 151
    new-instance v0, Landroidx/lifecycle/b0;

    .line 152
    .line 153
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u:Landroidx/lifecycle/b0;

    .line 157
    .line 158
    new-instance v0, Landroidx/lifecycle/b0;

    .line 159
    .line 160
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v:Landroidx/lifecycle/b0;

    .line 164
    .line 165
    new-instance v0, Landroidx/lifecycle/b0;

    .line 166
    .line 167
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->w:Landroidx/lifecycle/b0;

    .line 171
    .line 172
    return-void
.end method

.method private final C()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->a:Lkotlin/Lazy;

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

.method private static final J()Lcx/a;
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

.method public static synthetic b()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->J()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->w(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->C()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIIILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p2

    .line 11
    :goto_0
    and-int/lit8 v2, v0, 0x4

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, p3

    .line 19
    :goto_1
    and-int/lit8 v4, v0, 0x8

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    const-string v4, "1"

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v4, p4

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v5, v0, 0x10

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    const/16 v5, 0x14

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v5, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v6, v0, 0x20

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    move v6, v7

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v6, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v0, 0x40

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    move v8, v7

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move/from16 v8, p7

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v9, v0, 0x80

    .line 55
    .line 56
    if-eqz v9, :cond_6

    .line 57
    .line 58
    move v9, v7

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v9, p8

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v10, v0, 0x100

    .line 63
    .line 64
    if-eqz v10, :cond_7

    .line 65
    .line 66
    move v10, v7

    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move/from16 v10, p9

    .line 69
    .line 70
    :goto_7
    and-int/lit16 v11, v0, 0x200

    .line 71
    .line 72
    if-eqz v11, :cond_8

    .line 73
    .line 74
    goto :goto_8

    .line 75
    :cond_8
    move/from16 v7, p10

    .line 76
    .line 77
    :goto_8
    and-int/lit16 v0, v0, 0x400

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v11, "download_last_resolution"

    .line 88
    .line 89
    invoke-virtual {v0, v11, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    goto :goto_9

    .line 94
    :cond_9
    move/from16 v0, p11

    .line 95
    .line 96
    :goto_9
    move-object p2, p0

    .line 97
    move-object p3, p1

    .line 98
    move-object/from16 p4, v1

    .line 99
    .line 100
    move/from16 p5, v2

    .line 101
    .line 102
    move-object/from16 p6, v4

    .line 103
    .line 104
    move/from16 p7, v5

    .line 105
    .line 106
    move/from16 p8, v6

    .line 107
    .line 108
    move/from16 p9, v8

    .line 109
    .line 110
    move/from16 p10, v9

    .line 111
    .line 112
    move/from16 p11, v10

    .line 113
    .line 114
    move/from16 p12, v7

    .line 115
    .line 116
    move/from16 p13, v0

    .line 117
    .line 118
    invoke-virtual/range {p2 .. p13}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private final q()V
    .locals 20

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "DownloadReDetector"

    .line 6
    .line 7
    const-string v2, "--- getPathInfo"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v7, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lui/b;->a:Lui/b$a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lui/b$a;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "--- savedPath = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v1, "DownloadReDetector"

    .line 66
    .line 67
    move-object v0, v6

    .line 68
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lyw/b;

    .line 87
    .line 88
    invoke-virtual {v1}, Lyw/b;->b()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_0

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lyw/b;->g(Z)V

    .line 99
    .line 100
    .line 101
    move v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    sget-object v1, Lui/b;->a:Lui/b$a;

    .line 109
    .line 110
    invoke-virtual {v1}, Lui/b$a;->a()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    const/4 v14, 0x3

    .line 119
    if-nez v11, :cond_4

    .line 120
    .line 121
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-eqz v11, :cond_2

    .line 126
    .line 127
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-nez v9, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    if-eqz v0, :cond_3

    .line 135
    .line 136
    const/4 v0, 0x2

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    move v0, v14

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    :goto_1
    move v0, v2

    .line 141
    :goto_2
    new-instance v15, Lyw/b;

    .line 142
    .line 143
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    sget v11, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_moviebox_folder:I

    .line 148
    .line 149
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const-string v13, "getString(...)"

    .line 154
    .line 155
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/16 v16, 0x1

    .line 159
    .line 160
    const/16 v17, 0x1

    .line 161
    .line 162
    const-string v11, ""

    .line 163
    .line 164
    move-object v9, v15

    .line 165
    move-object v3, v13

    .line 166
    move/from16 v13, v16

    .line 167
    .line 168
    move-object/from16 v19, v15

    .line 169
    .line 170
    move-wide v14, v4

    .line 171
    move/from16 v16, v17

    .line 172
    .line 173
    invoke-direct/range {v9 .. v16}, Lyw/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 174
    .line 175
    .line 176
    if-ne v0, v2, :cond_5

    .line 177
    .line 178
    move v10, v2

    .line 179
    move-object/from16 v9, v19

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    move-object/from16 v9, v19

    .line 183
    .line 184
    const/4 v10, 0x0

    .line 185
    :goto_3
    invoke-virtual {v9, v10}, Lyw/b;->g(Z)V

    .line 186
    .line 187
    .line 188
    new-instance v10, Lyw/b;

    .line 189
    .line 190
    invoke-virtual {v1}, Lui/b$a;->b()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    sget v11, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    .line 199
    .line 200
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v15, 0x3

    .line 208
    const/16 v18, 0x2

    .line 209
    .line 210
    move-object v11, v10

    .line 211
    move-object v12, v6

    .line 212
    move-wide/from16 v16, v4

    .line 213
    .line 214
    invoke-direct/range {v11 .. v18}, Lyw/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 215
    .line 216
    .line 217
    const/4 v1, 0x3

    .line 218
    if-ne v0, v1, :cond_6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    const/4 v2, 0x0

    .line 222
    :goto_4
    invoke-virtual {v10, v2}, Lyw/b;->g(Z)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    check-cast v8, Ljava/util/Collection;

    .line 232
    .line 233
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    .line 235
    .line 236
    move-object/from16 v0, p0

    .line 237
    .line 238
    iget-object v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    .line 239
    .line 240
    invoke-virtual {v1, v7}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method private final w(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "--- getDownloadSavePathInfo, savedRootPath = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "DownloadReDetector"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    sget-object v1, Lui/b;->a:Lui/b$a;

    .line 38
    .line 39
    invoke-virtual {v1}, Lui/b$a;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lui/b$a;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    new-instance v10, Lyw/b;

    .line 47
    .line 48
    invoke-virtual {v1}, Lui/b$a;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget v2, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_albums:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v1, "getString(...)"

    .line 63
    .line 64
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    const/4 v8, 0x2

    .line 69
    move-object v1, v10

    .line 70
    move-object v2, v9

    .line 71
    invoke-direct/range {v1 .. v8}, Lyw/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 72
    .line 73
    .line 74
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v10, v1}, Lyw/b;->g(Z)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_1

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lyw/b;

    .line 111
    .line 112
    invoke-virtual {v3}, Lyw/b;->b()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    invoke-virtual {v3, p1}, Lyw/b;->g(Z)V

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    check-cast v1, Ljava/util/Collection;

    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->t:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->r:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final L(Lyw/c;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lyw/c;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lyw/c;->a()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lyw/c;->a()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->q:Landroidx/lifecycle/b0;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final f(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-instance v8, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$favorite$1;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, v8

    .line 22
    move-object v1, p1

    .line 23
    move-object v3, p0

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$favorite$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 p1, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v5, v6

    .line 32
    move-object v6, p1

    .line 33
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->n:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->k:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIII)V
    .locals 16

    .line 1
    const-string v0, "nextPage"

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1;

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    move-object v1, v15

    .line 20
    move/from16 v2, p11

    .line 21
    .line 22
    move-object/from16 v3, p1

    .line 23
    .line 24
    move/from16 v4, p6

    .line 25
    .line 26
    move/from16 v5, p7

    .line 27
    .line 28
    move/from16 v6, p3

    .line 29
    .line 30
    move-object/from16 v7, p0

    .line 31
    .line 32
    move/from16 v9, p5

    .line 33
    .line 34
    move/from16 v10, p8

    .line 35
    .line 36
    move/from16 v11, p9

    .line 37
    .line 38
    move/from16 v12, p10

    .line 39
    .line 40
    move-object/from16 v13, p2

    .line 41
    .line 42
    invoke-direct/range {v1 .. v14}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1;-><init>(ILjava/lang/String;IIILcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    move-object/from16 p1, v0

    .line 50
    .line 51
    move-object/from16 p2, v3

    .line 52
    .line 53
    move-object/from16 p3, v4

    .line 54
    .line 55
    move-object/from16 p4, v15

    .line 56
    .line 57
    move/from16 p5, v1

    .line 58
    .line 59
    move-object/from16 p6, v2

    .line 60
    .line 61
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "savedRootPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

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
    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

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
    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->b:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getSDCardPathInfo$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getSDCardPathInfo$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->l:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
