.class public final Lcom/transsion/postdetail/layer/local/c0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/c0$a;
    }
.end annotation


# static fields
.field public static final e0:Lcom/transsion/postdetail/layer/local/c0$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/transsion/baselib/db/download/DownloadBean;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Z

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/util/Map;

.field private final X:Ljava/util/List;

.field private Y:Z

.field private Z:Lcom/transsion/player/orplayer/global/TnPlayerType;

.field private a:Lcom/transsion/player/orplayer/f;

.field private a0:Z

.field private final b:Ljava/lang/String;

.field private b0:Z

.field private c:J

.field private c0:Lgj/c;

.field private d:J

.field private d0:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:I

.field private w:J

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/layer/local/c0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/c0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/layer/local/c0;->e0:Lcom/transsion/postdetail/layer/local/c0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "long_video_play"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/c0;->q:Z

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->E:I

    .line 13
    .line 14
    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->N:I

    .line 15
    .line 16
    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->O:I

    .line 17
    .line 18
    const-string v1, "local_video_detail"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->Q:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->W:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/util/List;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/c0;->b(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f()Lgj/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c0:Lgj/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lgj/a;->a:Lgj/a$a;

    .line 6
    .line 7
    const-class v1, Lgj/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lgj/c;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c0:Lgj/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c0:Lgj/c;

    .line 18
    .line 19
    return-object v0
.end method

.method private final x(Z)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->k:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 23
    .line 24
    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->v:I

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    .line 31
    .line 32
    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->p:Z

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->x:Ljava/lang/Integer;

    .line 38
    .line 39
    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->y:Ljava/lang/String;

    .line 40
    .line 41
    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->J:I

    .line 42
    .line 43
    const-string v4, ""

    .line 44
    .line 45
    iput-object v4, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/String;

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->j:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    .line 52
    .line 53
    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->Z:Lcom/transsion/player/orplayer/global/TnPlayerType;

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b0:Z

    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->O:I

    .line 2
    .line 3
    return-void
.end method

.method public final B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->N:I

    .line 2
    .line 3
    return-void
.end method

.method public final C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->Y:Z

    .line 2
    .line 3
    return-void
.end method

.method public final F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->d0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final G(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/transsion/postdetail/layer/local/c0;->J:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->J:I

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final H(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->a:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->Q:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final P(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->S:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    return-void
.end method

.method public final a()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x0

    .line 13
    const-string v4, "addSurface"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(Z)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    iget-object v7, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v10, 0x4

    .line 22
    const/4 v11, 0x0

    .line 23
    const-string v8, " exitPlay, return"

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    iget-object v7, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, " curVideoIsApp2Background = "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const/4 v10, 0x4

    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-static/range {v6 .. v11}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, v0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 62
    .line 63
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 69
    .line 70
    const-string v6, ""

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object v3, v6

    .line 81
    :cond_3
    const-string v7, "post_id"

    .line 82
    .line 83
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    :cond_4
    move-object v3, v6

    .line 97
    :cond_5
    const-string v7, "subject_id"

    .line 98
    .line 99
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 103
    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_7

    .line 111
    .line 112
    :cond_6
    move-object v3, v6

    .line 113
    :cond_7
    const-string v8, "resource_id"

    .line 114
    .line 115
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v3, :cond_8

    .line 121
    .line 122
    move-object v3, v6

    .line 123
    :cond_8
    const-string v9, "play_type"

    .line 124
    .line 125
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    .line 129
    .line 130
    if-nez v3, :cond_9

    .line 131
    .line 132
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 133
    .line 134
    invoke-virtual {v3}, Lqi/h;->h()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :cond_9
    const-string v10, "page_from"

    .line 139
    .line 140
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->G:Ljava/lang/String;

    .line 144
    .line 145
    if-nez v3, :cond_a

    .line 146
    .line 147
    move-object v3, v6

    .line 148
    :cond_a
    const-string v10, "url"

    .line 149
    .line 150
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    sget-object v3, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/transsion/baselib/helper/d;->d()F

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    const-string v11, "speed"

    .line 164
    .line 165
    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const-string v10, "scale_mode"

    .line 181
    .line 182
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->Y:Z

    .line 186
    .line 187
    const-string v10, "1"

    .line 188
    .line 189
    const-string v11, "0"

    .line 190
    .line 191
    if-eqz v3, :cond_b

    .line 192
    .line 193
    move-object v3, v10

    .line 194
    goto :goto_0

    .line 195
    :cond_b
    move-object v3, v11

    .line 196
    :goto_0
    const-string v12, "lock"

    .line 197
    .line 198
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->S:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 202
    .line 203
    if-eqz v3, :cond_c

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-nez v3, :cond_e

    .line 210
    .line 211
    :cond_c
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 212
    .line 213
    if-eqz v3, :cond_d

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    goto :goto_1

    .line 220
    :cond_d
    const/4 v3, 0x0

    .line 221
    :cond_e
    :goto_1
    if-eqz v3, :cond_15

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-nez v13, :cond_f

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_f
    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->S:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 231
    .line 232
    if-eqz v13, :cond_10

    .line 233
    .line 234
    invoke-virtual {v13}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    if-eqz v13, :cond_10

    .line 239
    .line 240
    invoke-virtual {v13}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    if-nez v13, :cond_12

    .line 245
    .line 246
    :cond_10
    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 247
    .line 248
    if-eqz v13, :cond_11

    .line 249
    .line 250
    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    goto :goto_2

    .line 255
    :cond_11
    const/4 v13, 0x0

    .line 256
    :goto_2
    if-nez v13, :cond_12

    .line 257
    .line 258
    move-object v13, v6

    .line 259
    :cond_12
    const-string v14, "content_id"

    .line 260
    .line 261
    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const-string v3, "belong_to_collection_id"

    .line 265
    .line 266
    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const-string v3, "content_type"

    .line 270
    .line 271
    const-string v13, "ugc_video"

    .line 272
    .line 273
    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 277
    .line 278
    if-eqz v3, :cond_13

    .line 279
    .line 280
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    if-nez v3, :cond_14

    .line 285
    .line 286
    :cond_13
    move-object v3, v6

    .line 287
    :cond_14
    const-string v13, "refer_subject_id"

    .line 288
    .line 289
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_15
    :goto_3
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    .line 293
    .line 294
    if-eqz v3, :cond_16

    .line 295
    .line 296
    const-string v13, "parent_content_id"

    .line 297
    .line 298
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    :cond_16
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->U:Ljava/lang/String;

    .line 302
    .line 303
    if-eqz v3, :cond_17

    .line 304
    .line 305
    const-string v13, "track_id"

    .line 306
    .line 307
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    :cond_17
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->V:Ljava/lang/String;

    .line 311
    .line 312
    if-eqz v3, :cond_18

    .line 313
    .line 314
    const-string v13, "parent_track_id"

    .line 315
    .line 316
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    :cond_18
    sget-object v3, Lcw/e;->a:Lcw/e$a;

    .line 320
    .line 321
    invoke-virtual {v3}, Lcw/e$a;->b()Lcw/e;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    invoke-interface {v13}, Lcw/e;->c()Z

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    const-string v14, "pip_feature"

    .line 334
    .line 335
    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Lcw/e$a;->b()Lcw/e;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-interface {v3}, Lcw/e;->i()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    const-string v13, "pip_system_feature"

    .line 351
    .line 352
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->P:Ljava/lang/String;

    .line 356
    .line 357
    if-eqz v3, :cond_19

    .line 358
    .line 359
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-lez v3, :cond_19

    .line 364
    .line 365
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->P:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    const-string v13, "resolution"

    .line 371
    .line 372
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :cond_19
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_1a

    .line 382
    .line 383
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 384
    .line 385
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_1c

    .line 390
    .line 391
    :cond_1a
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 392
    .line 393
    if-eqz v3, :cond_1b

    .line 394
    .line 395
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    goto :goto_4

    .line 404
    :cond_1b
    const/4 v3, 0x0

    .line 405
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    const-string v13, "item_type"

    .line 410
    .line 411
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :cond_1c
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 415
    .line 416
    if-eqz v3, :cond_1d

    .line 417
    .line 418
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    goto :goto_5

    .line 423
    :cond_1d
    const/4 v3, 0x0

    .line 424
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-nez v3, :cond_20

    .line 429
    .line 430
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 431
    .line 432
    if-eqz v3, :cond_1e

    .line 433
    .line 434
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    if-nez v3, :cond_1f

    .line 439
    .line 440
    :cond_1e
    move-object v3, v6

    .line 441
    :cond_1f
    const-string v13, "ops"

    .line 442
    .line 443
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    :cond_20
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 447
    .line 448
    if-eqz v3, :cond_21

    .line 449
    .line 450
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    if-eqz v3, :cond_21

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 457
    .line 458
    .line 459
    move-result-wide v13

    .line 460
    const-string v3, "resource_size"

    .line 461
    .line 462
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v13

    .line 466
    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    :cond_21
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 470
    .line 471
    const/high16 v13, 0x42c80000    # 100.0f

    .line 472
    .line 473
    if-eqz v3, :cond_23

    .line 474
    .line 475
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 476
    .line 477
    .line 478
    move-result-wide v14

    .line 479
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 480
    .line 481
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_23

    .line 486
    .line 487
    long-to-float v3, v14

    .line 488
    mul-float/2addr v3, v13

    .line 489
    iget-object v14, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 490
    .line 491
    if-eqz v14, :cond_22

    .line 492
    .line 493
    invoke-virtual {v14}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    if-eqz v14, :cond_22

    .line 498
    .line 499
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 500
    .line 501
    .line 502
    move-result-wide v14

    .line 503
    goto :goto_6

    .line 504
    :cond_22
    const-wide/16 v14, 0x1

    .line 505
    .line 506
    :goto_6
    long-to-float v14, v14

    .line 507
    div-float/2addr v3, v14

    .line 508
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    const-string v14, "downloaded_percent"

    .line 513
    .line 514
    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    :cond_23
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->W:Ljava/util/Map;

    .line 518
    .line 519
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v14

    .line 531
    if-eqz v14, :cond_24

    .line 532
    .line 533
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v14

    .line 537
    check-cast v14, Ljava/util/Map$Entry;

    .line 538
    .line 539
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v15

    .line 543
    check-cast v15, Lht/a;

    .line 544
    .line 545
    invoke-virtual {v15}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 546
    .line 547
    .line 548
    move-result-object v15

    .line 549
    invoke-virtual {v15}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 550
    .line 551
    .line 552
    move-result v15

    .line 553
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v16

    .line 557
    check-cast v16, Lht/a;

    .line 558
    .line 559
    invoke-virtual/range {v16 .. v16}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 560
    .line 561
    .line 562
    move-result-object v16

    .line 563
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v12

    .line 567
    new-instance v13, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    const-string v4, "subtitle_use_time_"

    .line 573
    .line 574
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v4, "_"

    .line 581
    .line 582
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    check-cast v5, Ljava/lang/Number;

    .line 597
    .line 598
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 599
    .line 600
    .line 601
    move-result-wide v12

    .line 602
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    const-wide/16 v4, 0x0

    .line 610
    .line 611
    const/high16 v13, 0x42c80000    # 100.0f

    .line 612
    .line 613
    goto :goto_7

    .line 614
    :cond_24
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 615
    .line 616
    const/4 v4, 0x1

    .line 617
    if-eqz v3, :cond_29

    .line 618
    .line 619
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-ne v3, v4, :cond_29

    .line 624
    .line 625
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 626
    .line 627
    if-eqz v3, :cond_25

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    goto :goto_8

    .line 634
    :cond_25
    const/4 v3, 0x0

    .line 635
    :goto_8
    if-lez v3, :cond_27

    .line 636
    .line 637
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 638
    .line 639
    if-eqz v3, :cond_26

    .line 640
    .line 641
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    goto :goto_9

    .line 646
    :cond_26
    const/4 v3, 0x0

    .line 647
    :goto_9
    iget-object v12, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 648
    .line 649
    if-eqz v12, :cond_2a

    .line 650
    .line 651
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 652
    .line 653
    .line 654
    move-result v12

    .line 655
    goto :goto_b

    .line 656
    :cond_27
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 657
    .line 658
    if-eqz v3, :cond_28

    .line 659
    .line 660
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    div-int/lit8 v3, v3, 0x64

    .line 665
    .line 666
    goto :goto_a

    .line 667
    :cond_28
    const/4 v3, 0x0

    .line 668
    :goto_a
    iget-object v12, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 669
    .line 670
    if-eqz v12, :cond_2a

    .line 671
    .line 672
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 673
    .line 674
    .line 675
    move-result v12

    .line 676
    rem-int/lit8 v12, v12, 0x64

    .line 677
    .line 678
    goto :goto_b

    .line 679
    :cond_29
    const/4 v3, 0x0

    .line 680
    :cond_2a
    const/4 v12, 0x0

    .line 681
    :goto_b
    if-lez v3, :cond_2b

    .line 682
    .line 683
    const-string v13, "seasons"

    .line 684
    .line 685
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    :cond_2b
    if-lez v12, :cond_2c

    .line 693
    .line 694
    const-string v3, "episode"

    .line 695
    .line 696
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v12

    .line 700
    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    :cond_2c
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->N:I

    .line 704
    .line 705
    if-ltz v3, :cond_2d

    .line 706
    .line 707
    const-string v12, "position"

    .line 708
    .line 709
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    :cond_2d
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->O:I

    .line 717
    .line 718
    if-ltz v3, :cond_2e

    .line 719
    .line 720
    const-string v12, "parent_position"

    .line 721
    .line 722
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    :cond_2e
    iget-wide v12, v0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 730
    .line 731
    const-wide/16 v14, 0x0

    .line 732
    .line 733
    cmp-long v3, v12, v14

    .line 734
    .line 735
    if-eqz v3, :cond_2f

    .line 736
    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 738
    .line 739
    .line 740
    move-result-wide v12

    .line 741
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 742
    .line 743
    sub-long/2addr v12, v4

    .line 744
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 745
    .line 746
    add-long/2addr v4, v12

    .line 747
    iput-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 748
    .line 749
    iput-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 750
    .line 751
    :cond_2f
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    .line 752
    .line 753
    cmp-long v4, v4, v14

    .line 754
    .line 755
    const-string v5, "delay"

    .line 756
    .line 757
    const-string v12, "delay_v"

    .line 758
    .line 759
    const-string v13, "is_start"

    .line 760
    .line 761
    if-gtz v4, :cond_33

    .line 762
    .line 763
    iget-boolean v4, v0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 764
    .line 765
    if-eqz v4, :cond_30

    .line 766
    .line 767
    goto :goto_e

    .line 768
    :cond_30
    invoke-interface {v2, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 772
    .line 773
    cmp-long v3, v3, v14

    .line 774
    .line 775
    if-lez v3, :cond_31

    .line 776
    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 778
    .line 779
    .line 780
    move-result-wide v3

    .line 781
    iget-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 782
    .line 783
    sub-long/2addr v3, v14

    .line 784
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    goto :goto_c

    .line 789
    :cond_31
    move-object v3, v11

    .line 790
    :goto_c
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    .line 794
    .line 795
    const-wide/16 v14, 0x0

    .line 796
    .line 797
    cmp-long v3, v3, v14

    .line 798
    .line 799
    if-lez v3, :cond_32

    .line 800
    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 802
    .line 803
    .line 804
    move-result-wide v3

    .line 805
    iget-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    .line 806
    .line 807
    sub-long/2addr v3, v14

    .line 808
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    goto :goto_d

    .line 813
    :cond_32
    move-object v3, v11

    .line 814
    :goto_d
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/String;

    .line 818
    .line 819
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    const-string v4, "not_play_error_msg"

    .line 824
    .line 825
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-object/from16 v19, v9

    .line 829
    .line 830
    move-object/from16 v20, v10

    .line 831
    .line 832
    goto/16 :goto_12

    .line 833
    .line 834
    :cond_33
    :goto_e
    invoke-interface {v2, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 838
    .line 839
    const-wide/16 v14, 0x0

    .line 840
    .line 841
    cmp-long v18, v3, v14

    .line 842
    .line 843
    move-object/from16 v19, v9

    .line 844
    .line 845
    move-object/from16 v20, v10

    .line 846
    .line 847
    if-lez v18, :cond_34

    .line 848
    .line 849
    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    .line 850
    .line 851
    cmp-long v18, v9, v14

    .line 852
    .line 853
    if-lez v18, :cond_34

    .line 854
    .line 855
    sub-long/2addr v9, v3

    .line 856
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    goto :goto_f

    .line 861
    :cond_34
    move-object v3, v11

    .line 862
    :goto_f
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    .line 866
    .line 867
    cmp-long v9, v3, v14

    .line 868
    .line 869
    if-lez v9, :cond_35

    .line 870
    .line 871
    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    .line 872
    .line 873
    cmp-long v12, v9, v14

    .line 874
    .line 875
    if-lez v12, :cond_35

    .line 876
    .line 877
    sub-long/2addr v9, v3

    .line 878
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    goto :goto_10

    .line 883
    :cond_35
    move-object v3, v11

    .line 884
    :goto_10
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    .line 888
    .line 889
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    const-string v4, "buffer_time"

    .line 894
    .line 895
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    .line 899
    .line 900
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    const-string v4, "buffer_count"

    .line 905
    .line 906
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    .line 910
    .line 911
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    const-string v4, "seek_count"

    .line 916
    .line 917
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    .line 921
    .line 922
    const-wide/16 v9, 0x0

    .line 923
    .line 924
    cmp-long v5, v3, v9

    .line 925
    .line 926
    if-lez v5, :cond_36

    .line 927
    .line 928
    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->j:J

    .line 929
    .line 930
    long-to-float v5, v9

    .line 931
    long-to-float v3, v3

    .line 932
    div-float/2addr v5, v3

    .line 933
    const/high16 v3, 0x42c80000    # 100.0f

    .line 934
    .line 935
    mul-float/2addr v5, v3

    .line 936
    const-string v3, "play_complete"

    .line 937
    .line 938
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    .line 946
    .line 947
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    const-string v4, "total_duration"

    .line 952
    .line 953
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    :cond_36
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 957
    .line 958
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v3

    .line 962
    const-string v4, "play_duration"

    .line 963
    .line 964
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    .line 968
    .line 969
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v3

    .line 973
    const-string v4, "play_duration_middlepage"

    .line 974
    .line 975
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    .line 979
    .line 980
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    const-string v4, "play_duration_fullscreen"

    .line 985
    .line 986
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    .line 990
    .line 991
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    const-string v4, "play_duration_pip"

    .line 996
    .line 997
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 1001
    .line 1002
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    const-string v4, "pause_duration"

    .line 1007
    .line 1008
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->v:I

    .line 1012
    .line 1013
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    const-string v4, "pause_count"

    .line 1018
    .line 1019
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->p:Z

    .line 1023
    .line 1024
    if-eqz v3, :cond_37

    .line 1025
    .line 1026
    move-object/from16 v3, v20

    .line 1027
    .line 1028
    goto :goto_11

    .line 1029
    :cond_37
    move-object v3, v11

    .line 1030
    :goto_11
    const-string v4, "complete"

    .line 1031
    .line 1032
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->L:I

    .line 1036
    .line 1037
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    const-string v4, "video_bitrate"

    .line 1042
    .line 1043
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->M:I

    .line 1047
    .line 1048
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    const-string v4, "audio_bitrate"

    .line 1053
    .line 1054
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    :goto_12
    if-eqz v1, :cond_38

    .line 1058
    .line 1059
    move-object/from16 v3, v20

    .line 1060
    .line 1061
    goto :goto_13

    .line 1062
    :cond_38
    move-object v3, v11

    .line 1063
    :goto_13
    const-string v4, "app_to_background"

    .line 1064
    .line 1065
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->K:Z

    .line 1069
    .line 1070
    if-eqz v3, :cond_39

    .line 1071
    .line 1072
    move-object/from16 v3, v20

    .line 1073
    .line 1074
    goto :goto_14

    .line 1075
    :cond_39
    move-object v3, v11

    .line 1076
    :goto_14
    const-string v4, "is_replay"

    .line 1077
    .line 1078
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->Z:Lcom/transsion/player/orplayer/global/TnPlayerType;

    .line 1082
    .line 1083
    if-eqz v3, :cond_3a

    .line 1084
    .line 1085
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    const-string v4, "error_player"

    .line 1090
    .line 1091
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    :cond_3a
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    .line 1095
    .line 1096
    if-eqz v3, :cond_3b

    .line 1097
    .line 1098
    move-object/from16 v3, v20

    .line 1099
    .line 1100
    goto :goto_15

    .line 1101
    :cond_3b
    move-object v3, v11

    .line 1102
    :goto_15
    const-string v4, "aliyun_2_sfotdecoder"

    .line 1103
    .line 1104
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b0:Z

    .line 1108
    .line 1109
    if-eqz v3, :cond_3c

    .line 1110
    .line 1111
    move-object/from16 v10, v20

    .line 1112
    .line 1113
    goto :goto_16

    .line 1114
    :cond_3c
    move-object v10, v11

    .line 1115
    :goto_16
    const-string v3, "timeout_replay"

    .line 1116
    .line 1117
    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    sget-object v3, Lcom/transsnet/downloader/util/h;->a:Lcom/transsnet/downloader/util/h;

    .line 1121
    .line 1122
    invoke-virtual {v3}, Lcom/transsnet/downloader/util/h;->a()Ljava/util/Map;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v3

    .line 1126
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v4

    .line 1130
    if-nez v4, :cond_3d

    .line 1131
    .line 1132
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1141
    .line 1142
    .line 1143
    move-result v4

    .line 1144
    if-eqz v4, :cond_3d

    .line 1145
    .line 1146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v4

    .line 1150
    check-cast v4, Ljava/util/Map$Entry;

    .line 1151
    .line 1152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v5

    .line 1156
    check-cast v5, Ljava/lang/String;

    .line 1157
    .line 1158
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    check-cast v4, Ljava/lang/Number;

    .line 1163
    .line 1164
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 1165
    .line 1166
    .line 1167
    move-result-wide v9

    .line 1168
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    goto :goto_17

    .line 1176
    :cond_3d
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->x:Ljava/lang/Integer;

    .line 1177
    .line 1178
    if-eqz v3, :cond_3e

    .line 1179
    .line 1180
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1181
    .line 1182
    .line 1183
    move-result v3

    .line 1184
    const-string v4, "player_error_code"

    .line 1185
    .line 1186
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v3

    .line 1190
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    :cond_3e
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->y:Ljava/lang/String;

    .line 1194
    .line 1195
    if-eqz v3, :cond_3f

    .line 1196
    .line 1197
    const-string v4, "player_error_msg"

    .line 1198
    .line 1199
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    :cond_3f
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/util/List;

    .line 1203
    .line 1204
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v3

    .line 1208
    if-eqz v3, :cond_40

    .line 1209
    .line 1210
    const-string v3, "subtitle_downloaded"

    .line 1211
    .line 1212
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_19

    .line 1216
    .line 1217
    :cond_40
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1218
    .line 1219
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/util/List;

    .line 1223
    .line 1224
    new-instance v5, Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    check-cast v4, Ljava/util/Collection;

    .line 1230
    .line 1231
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1232
    .line 1233
    .line 1234
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v4

    .line 1238
    :cond_41
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1239
    .line 1240
    .line 1241
    move-result v5

    .line 1242
    if-eqz v5, :cond_43

    .line 1243
    .line 1244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v5

    .line 1248
    check-cast v5, Lht/a;

    .line 1249
    .line 1250
    invoke-virtual {v5}, Lht/a;->d()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v9

    .line 1254
    if-eqz v9, :cond_41

    .line 1255
    .line 1256
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v9

    .line 1260
    invoke-virtual {v9}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v9

    .line 1264
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 1265
    .line 1266
    .line 1267
    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v9

    .line 1271
    if-eqz v9, :cond_42

    .line 1272
    .line 1273
    goto :goto_18

    .line 1274
    :cond_42
    invoke-virtual {v5}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v5

    .line 1278
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v5

    .line 1282
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    .line 1287
    .line 1288
    goto :goto_18

    .line 1289
    :catchall_0
    :cond_43
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    .line 1290
    .line 1291
    if-nez v3, :cond_44

    .line 1292
    .line 1293
    move-object v3, v6

    .line 1294
    :cond_44
    const-string v4, "subtitle_type"

    .line 1295
    .line 1296
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    .line 1300
    .line 1301
    if-nez v3, :cond_45

    .line 1302
    .line 1303
    move-object v3, v6

    .line 1304
    :cond_45
    const-string v4, "subtitle_lan"

    .line 1305
    .line 1306
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->E:I

    .line 1310
    .line 1311
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    const-string v4, "subtitle_from"

    .line 1316
    .line 1317
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    sget-object v20, Lwf/a;->a:Lwf/a$a;

    .line 1321
    .line 1322
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    .line 1323
    .line 1324
    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    .line 1325
    .line 1326
    iget v5, v0, Lcom/transsion/postdetail/layer/local/c0;->E:I

    .line 1327
    .line 1328
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .line 1332
    .line 1333
    const-string v10, "LanName= "

    .line 1334
    .line 1335
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    const-string v3, ",Lan = "

    .line 1342
    .line 1343
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    const-string v3, ", From = "

    .line 1350
    .line 1351
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v22

    .line 1361
    const/16 v24, 0x4

    .line 1362
    .line 1363
    const/16 v25, 0x0

    .line 1364
    .line 1365
    const-string v21, "ORSubtitle"

    .line 1366
    .line 1367
    const/16 v23, 0x0

    .line 1368
    .line 1369
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1370
    .line 1371
    .line 1372
    :goto_19
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    .line 1373
    .line 1374
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v3

    .line 1378
    if-eqz v3, :cond_46

    .line 1379
    .line 1380
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    .line 1381
    .line 1382
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v3

    .line 1386
    if-nez v3, :cond_47

    .line 1387
    .line 1388
    :cond_46
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    .line 1389
    .line 1390
    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    .line 1391
    .line 1392
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v3

    .line 1396
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v3

    .line 1400
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    const-string v4, "subtitle_bilingual"

    .line 1405
    .line 1406
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    :cond_47
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1410
    .line 1411
    if-eqz v3, :cond_48

    .line 1412
    .line 1413
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 1414
    .line 1415
    .line 1416
    move-result v3

    .line 1417
    const/4 v4, 0x6

    .line 1418
    if-ne v3, v4, :cond_48

    .line 1419
    .line 1420
    const/4 v5, 0x1

    .line 1421
    goto :goto_1a

    .line 1422
    :cond_48
    const/4 v5, 0x0

    .line 1423
    :goto_1a
    if-nez v5, :cond_49

    .line 1424
    .line 1425
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/local/c0;->f()Lgj/c;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v3

    .line 1429
    if-eqz v3, :cond_49

    .line 1430
    .line 1431
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 1432
    .line 1433
    invoke-interface {v3, v4, v5}, Lgj/c;->b(J)V

    .line 1434
    .line 1435
    .line 1436
    :cond_49
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 1437
    .line 1438
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 1439
    .line 1440
    const/16 v24, 0x4

    .line 1441
    .line 1442
    const/16 v25, 0x0

    .line 1443
    .line 1444
    const-string v22, "video exit\uff0c report and reset data"

    .line 1445
    .line 1446
    const/16 v23, 0x0

    .line 1447
    .line 1448
    move-object/from16 v20, v4

    .line 1449
    .line 1450
    move-object/from16 v21, v3

    .line 1451
    .line 1452
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1453
    .line 1454
    .line 1455
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->x:Ljava/lang/Integer;

    .line 1456
    .line 1457
    if-eqz v3, :cond_4a

    .line 1458
    .line 1459
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 1460
    .line 1461
    sget-object v5, Lqi/h;->a:Lqi/h;

    .line 1462
    .line 1463
    invoke-virtual {v5, v2}, Lqi/h;->n(Ljava/util/Map;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v5

    .line 1467
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .line 1471
    .line 1472
    const-string v10, "error "

    .line 1473
    .line 1474
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v5

    .line 1484
    const/4 v9, 0x1

    .line 1485
    invoke-virtual {v4, v3, v5, v9}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_1d

    .line 1489
    :cond_4a
    iget-object v5, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 1490
    .line 1491
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v9

    .line 1495
    iget-object v10, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1496
    .line 1497
    if-eqz v10, :cond_4b

    .line 1498
    .line 1499
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v10

    .line 1503
    goto :goto_1b

    .line 1504
    :cond_4b
    const/4 v10, 0x0

    .line 1505
    :goto_1b
    iget-object v11, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1506
    .line 1507
    if-eqz v11, :cond_4c

    .line 1508
    .line 1509
    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v12

    .line 1513
    goto :goto_1c

    .line 1514
    :cond_4c
    const/4 v12, 0x0

    .line 1515
    :goto_1c
    iget-object v11, v0, Lcom/transsion/postdetail/layer/local/c0;->G:Ljava/lang/String;

    .line 1516
    .line 1517
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .line 1521
    .line 1522
    const-string v14, "is_start="

    .line 1523
    .line 1524
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    const-string v9, " subject_id="

    .line 1531
    .line 1532
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    .line 1538
    const-string v9, " requestId="

    .line 1539
    .line 1540
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    .line 1546
    const-string v9, " urlOrPath="

    .line 1547
    .line 1548
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v9

    .line 1558
    const/4 v3, 0x1

    .line 1559
    invoke-virtual {v4, v5, v9, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1560
    .line 1561
    .line 1562
    :goto_1d
    sget-object v12, Lqi/h;->a:Lqi/h;

    .line 1563
    .line 1564
    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->Q:Ljava/lang/String;

    .line 1565
    .line 1566
    iget-object v14, v0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    .line 1567
    .line 1568
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 1569
    .line 1570
    move-wide v15, v3

    .line 1571
    move-object/from16 v17, v2

    .line 1572
    .line 1573
    invoke-virtual/range {v12 .. v17}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 1574
    .line 1575
    .line 1576
    new-instance v2, Landroid/os/Bundle;

    .line 1577
    .line 1578
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1582
    .line 1583
    if-eqz v3, :cond_4d

    .line 1584
    .line 1585
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v3

    .line 1589
    if-nez v3, :cond_4e

    .line 1590
    .line 1591
    :cond_4d
    move-object v3, v6

    .line 1592
    :cond_4e
    invoke-virtual {v2, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    .line 1594
    .line 1595
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1596
    .line 1597
    if-eqz v3, :cond_4f

    .line 1598
    .line 1599
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v3

    .line 1603
    if-nez v3, :cond_50

    .line 1604
    .line 1605
    :cond_4f
    move-object v3, v6

    .line 1606
    :cond_50
    invoke-virtual {v2, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 1610
    .line 1611
    if-nez v3, :cond_51

    .line 1612
    .line 1613
    :goto_1e
    move-object/from16 v3, v19

    .line 1614
    .line 1615
    goto :goto_1f

    .line 1616
    :cond_51
    move-object v6, v3

    .line 1617
    goto :goto_1e

    .line 1618
    :goto_1f
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    .line 1620
    .line 1621
    const-string v3, "is_music_liked_fragment"

    .line 1622
    .line 1623
    iget-boolean v4, v0, Lcom/transsion/postdetail/layer/local/c0;->d0:Z

    .line 1624
    .line 1625
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1626
    .line 1627
    .line 1628
    sget-object v3, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 1629
    .line 1630
    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    .line 1631
    .line 1632
    sget-object v5, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 1633
    .line 1634
    invoke-virtual {v5}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v5

    .line 1638
    invoke-virtual {v3, v4, v2, v5}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1639
    .line 1640
    .line 1641
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/layer/local/c0;->x(Z)V

    .line 1642
    .line 1643
    .line 1644
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Y:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->W:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x0

    .line 13
    const-string v4, "initView"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onCompletion"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->p:Z

    .line 15
    .line 16
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onLoadingBegin"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    .line 18
    .line 19
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    .line 20
    .line 21
    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final k(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 7

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->q:Z

    .line 14
    .line 15
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "onLocalUiChanged\uff0c uiType= "

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final l(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 6

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->x:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->y:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->x:Ljava/lang/Integer;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "onPlayError, playerErrorCode  ="

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", playerErrorMessage ="

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v4, 0x4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->y:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->G(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final m(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->a:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->k:J

    .line 20
    .line 21
    sub-long v2, p1, v0

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    cmp-long v4, v4, v2

    .line 26
    .line 27
    if-gtz v4, :cond_4

    .line 28
    .line 29
    const-wide/16 v4, 0x7d0

    .line 30
    .line 31
    cmp-long v2, v2, v4

    .line 32
    .line 33
    if-gez v2, :cond_4

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 36
    .line 37
    sub-long v4, p1, v0

    .line 38
    .line 39
    add-long/2addr v2, v4

    .line 40
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->r:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    .line 47
    .line 48
    sub-long v0, p1, v0

    .line 49
    .line 50
    add-long/2addr v2, v0

    .line 51
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->q:Z

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    .line 59
    .line 60
    sub-long v0, p1, v0

    .line 61
    .line 62
    add-long/2addr v2, v0

    .line 63
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    .line 67
    .line 68
    sub-long v0, p1, v0

    .line 69
    .line 70
    add-long/2addr v2, v0

    .line 71
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    .line 72
    .line 73
    :cond_4
    :goto_0
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/c0;->k:J

    .line 74
    .line 75
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->j:J

    .line 76
    .line 77
    cmp-long v0, p1, v0

    .line 78
    .line 79
    if-lez v0, :cond_5

    .line 80
    .line 81
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/c0;->j:J

    .line 82
    .line 83
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 p2, 0x6

    .line 92
    if-ne p1, p2, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/c0;->f()Lgj/c;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    .line 102
    .line 103
    invoke-interface {p1, v0, v1}, Lgj/c;->a(J)V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onRenderFirstFrame"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    .line 18
    .line 19
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "oonReplayonReplay"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->K:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    .line 18
    .line 19
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    .line 6
    .line 7
    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lan"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "onSubtitleSelected = "

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    .line 41
    .line 42
    iput p3, p0, Lcom/transsion/postdetail/layer/local/c0;->E:I

    .line 43
    .line 44
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->M:I

    .line 2
    .line 3
    return-void
.end method

.method public final u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->L:I

    .line 2
    .line 3
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->v:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->v:I

    .line 6
    .line 7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v3, "onVideoPause"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 24
    .line 25
    return-void
.end method

.method public final w()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "onVideoStart"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 26
    .line 27
    sub-long/2addr v0, v4

    .line 28
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 29
    .line 30
    add-long/2addr v4, v0

    .line 31
    iput-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->u:J

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->t:J

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final z(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const-string p2, "0"

    .line 25
    .line 26
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->G:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "1"

    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->G:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "2"

    .line 49
    .line 50
    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :cond_3
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->G:Ljava/lang/String;

    .line 59
    .line 60
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x0

    .line 66
    const-string v2, "setData"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
