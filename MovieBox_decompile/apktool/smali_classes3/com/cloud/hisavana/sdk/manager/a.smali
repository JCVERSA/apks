.class public final Lcom/cloud/hisavana/sdk/manager/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/manager/a;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Long;

.field private static d:Ljava/lang/Long;

.field private static e:Ljava/lang/Integer;

.field private static f:Ljava/lang/Integer;

.field private static g:Z

.field private static h:Ljava/lang/Integer;

.field private static volatile i:J

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/ref/WeakReference;

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:J

.field private static u:Landroidx/browser/customtabs/f;

.field private static v:Landroidx/browser/customtabs/CustomTabsClient;

.field private static w:Landroidx/browser/customtabs/j;

.field private static x:Z

.field private static final y:Lcom/cloud/hisavana/sdk/manager/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 15
    .line 16
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 17
    .line 18
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    .line 26
    .line 27
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 28
    .line 29
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 34
    .line 35
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 40
    .line 41
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 42
    .line 43
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 44
    .line 45
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$e;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/a$e;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic C(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic D(Lcom/cloud/hisavana/sdk/manager/a;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->U(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic F()Landroidx/browser/customtabs/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    .line 2
    .line 3
    return-object v0
.end method

.method private final H(IJ)V
    .locals 11

    .line 1
    :try_start_0
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 2
    .line 3
    sget-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    :goto_0
    move-object v4, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    sget-object v8, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 41
    .line 42
    sget-wide p1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 43
    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    cmp-long p1, p1, v0

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :catchall_0
    return-void
.end method

.method public static final synthetic I(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 2
    .line 3
    return-void
.end method

.method private final J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    :catchall_0
    return-void
.end method

.method public static final synthetic K(Lcom/cloud/hisavana/sdk/manager/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/cloud/hisavana/sdk/manager/a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->H(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final N(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CustomTabsManager"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    :cond_0
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/m;->k(Lcom/cloud/sdk/commonutil/util/m$b;)V

    .line 22
    .line 23
    .line 24
    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    sput-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "upload finish tracking"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->k0()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    .line 51
    .line 52
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "isActivityResume true"

    .line 57
    .line 58
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/m;->k(Lcom/cloud/sdk/commonutil/util/m$b;)V

    .line 63
    .line 64
    .line 65
    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    .line 66
    .line 67
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "isActivityResume "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic O(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P()Landroidx/browser/customtabs/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Q(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic T(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 2
    .line 3
    return-void
.end method

.method private final U(Z)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v3, "checkServerIsAvailable: service is connected check alive"

    .line 23
    .line 24
    const-string v4, "CustomTabsManager"

    .line 25
    .line 26
    invoke-virtual {p1, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-string v5, "test"

    .line 35
    .line 36
    invoke-virtual {v3, v5, p1}, Landroidx/browser/customtabs/j;->i(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move v1, v2

    .line 41
    :cond_1
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "checkServerIsAvailable: alive ->"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    sget-object v5, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-object v3, p1

    .line 77
    :goto_2
    sput-object v3, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "checkServerIsAvailable: service is not connected,need bind"

    .line 86
    .line 87
    invoke-virtual {v0, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 91
    .line 92
    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    .line 93
    .line 94
    sput-boolean v2, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 95
    .line 96
    return v2

    .line 97
    :cond_3
    return v0
.end method

.method public static final synthetic V()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic W(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic X()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic Y()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic Z()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic a0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d()Landroidx/browser/customtabs/CustomTabsClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    .line 3
    return-object v0
.end method

.method private final d0()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 8
    .line 9
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 10
    .line 11
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 12
    .line 13
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    :cond_0
    return-void
.end method

.method private final e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$i;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/cloud/hisavana/sdk/manager/a$i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p2, p1, v2}, Lcom/cloud/hisavana/sdk/manager/a$g;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

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

.method private final g(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$c;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/manager/a$c;-><init>(Lkotlinx/coroutines/n;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/a;->u(Landroidx/browser/customtabs/f;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v5, Lcom/cloud/hisavana/sdk/manager/a$d;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v5, p1, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a$d;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    const-string v1, "CustomTabsManager"

    .line 44
    .line 45
    const-string v2, "bindCustomTabsService: "

    .line 46
    .line 47
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-ne p1, v0, :cond_0

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object p1
.end method

.method private final h(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lcom/cloud/hisavana/sdk/manager/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/cloud/hisavana/sdk/manager/a$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

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
    iput v1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/cloud/hisavana/sdk/manager/a$a;-><init>(Lcom/cloud/hisavana/sdk/manager/a;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    .line 32
    .line 33
    const/16 v3, 0x1b5e

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v5, :cond_1

    .line 40
    .line 41
    iget-boolean p2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->b:Z

    .line 42
    .line 43
    iget-object p1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    if-eqz p3, :cond_3

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getCctBindTimeout()Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-wide/16 v6, 0x3e8

    .line 80
    .line 81
    :goto_1
    new-instance p3, Lcom/cloud/hisavana/sdk/manager/a$b;

    .line 82
    .line 83
    invoke-direct {p3, p1, v4}, Lcom/cloud/hisavana/sdk/manager/a$b;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    iput-object p0, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->a:Ljava/lang/Object;

    .line 87
    .line 88
    iput-boolean p2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->b:Z

    .line 89
    .line 90
    iput v5, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    .line 91
    .line 92
    invoke-static {v6, v7, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-ne p3, v1, :cond_4

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_4
    :goto_2
    check-cast p3, Ljava/lang/Integer;

    .line 100
    .line 101
    if-eqz p3, :cond_5

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move p1, v3

    .line 109
    :goto_3
    if-nez p1, :cond_9

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    const-wide/16 v0, 0x0

    .line 118
    .line 119
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->e(J)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    const/4 v5, 0x0

    .line 127
    :goto_4
    sput-boolean v5, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 128
    .line 129
    :cond_7
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 130
    .line 131
    if-eqz p2, :cond_8

    .line 132
    .line 133
    sget-object p3, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    .line 134
    .line 135
    invoke-virtual {p2, p3}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    :cond_8
    sput-object v4, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 140
    .line 141
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const-string p3, "CustomTabsManager"

    .line 146
    .line 147
    const-string v0, "bindCustomTabsService success now "

    .line 148
    .line 149
    invoke-virtual {p2, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    return-object p1

    .line 157
    :catchall_0
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1
.end method

.method public static final synthetic i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/manager/a;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 3
    .line 4
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->d0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic k(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->g(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k0()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-wide v1, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    const/16 v2, 0x1f4a

    .line 10
    .line 11
    const/16 v5, 0x1f49

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 16
    .line 17
    cmp-long v1, v6, v3

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 22
    .line 23
    cmp-long v1, v6, v3

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-direct {v0, v5, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->H(IJ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    sget-wide v8, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 36
    .line 37
    sub-long/2addr v6, v8

    .line 38
    invoke-direct {v0, v2, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->n(IJ)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    :try_start_0
    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 42
    .line 43
    sget-wide v8, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    .line 44
    .line 45
    sub-long/2addr v6, v8

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 51
    .line 52
    sub-long/2addr v8, v10

    .line 53
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    .line 54
    .line 55
    cmp-long v1, v10, v3

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    move v2, v12

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    .line 63
    .line 64
    cmp-long v1, v10, v3

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/16 v2, 0x1f48

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 72
    .line 73
    cmp-long v1, v10, v3

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    move v2, v5

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move-wide v10, v8

    .line 80
    :goto_1
    sget-object v13, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 95
    .line 96
    :goto_2
    move-object v15, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/4 v1, 0x0

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v16

    .line 104
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v17

    .line 108
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v18

    .line 112
    sget-boolean v1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object v19

    .line 118
    sget-object v20, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 119
    .line 120
    sget-wide v1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 121
    .line 122
    cmp-long v1, v1, v3

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    const/4 v12, 0x1

    .line 127
    :cond_6
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v21

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v22

    .line 135
    invoke-virtual/range {v13 .. v22}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->S(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    :catchall_0
    return-void
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->h(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n(IJ)V
    .locals 11

    .line 1
    :try_start_0
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    .line 2
    .line 3
    sget-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    :goto_0
    move-object v4, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    sget-object v8, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 41
    .line 42
    sget-wide p1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    .line 43
    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    cmp-long p1, p1, v0

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :catchall_0
    return-void
.end method

.method public static final synthetic p(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    .line 2
    .line 3
    return-void
.end method

.method private final q(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x5

    .line 14
    if-ne p3, v1, :cond_2

    .line 15
    .line 16
    sget-object p3, Lcom/cloud/hisavana/sdk/t3;->a:Lcom/cloud/hisavana/sdk/t3;

    .line 17
    .line 18
    invoke-virtual {p3, p1, p2}, Lcom/cloud/hisavana/sdk/t3;->l(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 23
    .line 24
    const-string p3, "CustomTabsManager"

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "preload h5, mCCTSession is null"

    .line 33
    .line 34
    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/b;->h(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    const/16 p1, 0x8

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    sget-wide v4, Lcom/cloud/hisavana/sdk/manager/a;->i:J

    .line 63
    .line 64
    sub-long v4, v2, v4

    .line 65
    .line 66
    const-wide/16 v6, 0x7d0

    .line 67
    .line 68
    cmp-long p1, v4, v6

    .line 69
    .line 70
    if-gtz p1, :cond_6

    .line 71
    .line 72
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "preload h5, cool down time is 2000ms"

    .line 77
    .line 78
    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const/4 p3, 0x2

    .line 86
    if-ge p1, p3, :cond_5

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void

    .line 92
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "start preload h5, url is : "

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-string v0, "getRealLandUrl(...)"

    .line 129
    .line 130
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    const-string v0, "parse(this)"

    .line 138
    .line 139
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, p3, v0, v0}, Landroidx/browser/customtabs/j;->h(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    .line 147
    .line 148
    .line 149
    sput-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->i:J

    .line 150
    .line 151
    return-void
.end method

.method public static final synthetic t(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Landroidx/browser/customtabs/f;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic v(Lcom/cloud/hisavana/sdk/manager/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/cloud/hisavana/sdk/manager/a;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->n(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->q(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/cloud/hisavana/sdk/manager/a;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/cloud/hisavana/sdk/manager/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->N(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final E(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)I
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->G(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x18

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v3, "android.intent.action.VIEW"

    .line 34
    .line 35
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-lez v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/high16 v0, 0x10000000

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-static {p3, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    :cond_0
    const/16 p1, 0x1b6e

    .line 69
    .line 70
    return p1

    .line 71
    :catchall_0
    const/16 p1, 0x1b67

    .line 72
    .line 73
    return p1
.end method

.method public final G(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "android.intent.action.VIEW"

    .line 13
    .line 14
    const-string v2, "https://www.hisavana.com"

    .line 15
    .line 16
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.category.BROWSABLE"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/high16 v1, 0x10000

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return-object p1
.end method

.method public final M(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableSplashADcct()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p2, v0

    .line 29
    :goto_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x1b64

    .line 32
    .line 33
    return p1

    .line 34
    :cond_1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v1, "cct_switch_state"

    .line 39
    .line 40
    invoke-virtual {p2, v1, v0}, Ll7/a;->g(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const-string v2, "CustomTabsManager"

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "cct_switch_timestamp"

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    invoke-virtual {v3, v4, v5, v6}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getDIntervalTime()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v5, 0x7

    .line 78
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    sub-long/2addr v6, v3

    .line 83
    const v3, 0x5265c00

    .line 84
    .line 85
    .line 86
    mul-int/2addr v5, v3

    .line 87
    int-to-long v3, v5

    .line 88
    cmp-long v3, v6, v3

    .line 89
    .line 90
    if-gez v3, :cond_3

    .line 91
    .line 92
    return p2

    .line 93
    :cond_3
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v1, v0}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v4, "checkInstallChromOrEnableCCT: "

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const/4 v1, 0x1

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableCctSwitch()Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move p2, v1

    .line 143
    :goto_2
    if-nez p2, :cond_6

    .line 144
    .line 145
    const/16 p1, 0x1b61

    .line 146
    .line 147
    return p1

    .line 148
    :cond_6
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_7

    .line 155
    .line 156
    move v3, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    move v3, v0

    .line 159
    :goto_3
    if-eqz v3, :cond_8

    .line 160
    .line 161
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/manager/a;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_8
    sput-object p2, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    .line 168
    .line 169
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_9

    .line 174
    .line 175
    move p1, v1

    .line 176
    goto :goto_4

    .line 177
    :cond_9
    move p1, v0

    .line 178
    :goto_4
    if-eqz p1, :cond_a

    .line 179
    .line 180
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const-string p2, "checkInstallChromOrEnableCCT:"

    .line 185
    .line 186
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const/16 p1, 0x1b60

    .line 190
    .line 191
    return p1

    .line 192
    :cond_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getSysBlackVersion()Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_c

    .line 203
    .line 204
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    :cond_c
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 210
    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    const/16 p1, 0x1b62

    .line 222
    .line 223
    return p1

    .line 224
    :cond_d
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v4, "devide model is -> "

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {p2, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    if-eqz p2, :cond_e

    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getWhiteDeviceModel()Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    if-nez p2, :cond_f

    .line 261
    .line 262
    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    :cond_f
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    const/16 v3, 0x1b63

    .line 272
    .line 273
    if-nez v2, :cond_13

    .line 274
    .line 275
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_10

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    :cond_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_12

    .line 291
    .line 292
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v2, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_11

    .line 303
    .line 304
    move v1, v0

    .line 305
    :cond_12
    :goto_5
    if-eqz v1, :cond_19

    .line 306
    .line 307
    return v3

    .line 308
    :cond_13
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    if-eqz p2, :cond_14

    .line 313
    .line 314
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getBlackDeviceModel()Ljava/util/ArrayList;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    if-nez p2, :cond_15

    .line 319
    .line 320
    :cond_14
    new-instance p2, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    :cond_15
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_19

    .line 330
    .line 331
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_16

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    :cond_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_18

    .line 347
    .line 348
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v2, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_17

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_18
    :goto_6
    move v1, v0

    .line 362
    :goto_7
    if-eqz v1, :cond_19

    .line 363
    .line 364
    return v3

    .line 365
    :cond_19
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)I
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 7
    .line 8
    xor-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/manager/a;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/browser/customtabs/d$b;

    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/browser/customtabs/d$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    :try_start_1
    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/d$b;->e(I)Landroidx/browser/customtabs/d$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    const/4 v3, 0x1

    .line 38
    :try_start_2
    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/d$b;->f(Z)Landroidx/browser/customtabs/d$b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v4, "build(...)"

    .line 46
    .line 47
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 53
    .line 54
    const/high16 v4, 0x10000000

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 60
    .line 61
    const-string v4, "com.android.chrome"

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 67
    .line 68
    const-string v4, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 69
    .line 70
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 74
    .line 75
    const-string v4, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    .line 76
    .line 77
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 81
    .line 82
    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

    .line 83
    .line 84
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 88
    .line 89
    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

    .line 90
    .line 91
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const/16 v1, 0x17

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p3, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    const-string v3, ""

    .line 112
    .line 113
    if-nez v1, :cond_2

    .line 114
    .line 115
    move-object v1, v3

    .line 116
    :cond_2
    :try_start_3
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-nez p3, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object v3, p3

    .line 124
    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-string v1, "parse(this)"

    .line 129
    .line 130
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1, p3}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/cloud/hisavana/sdk/n2;->a()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static {v3, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p3, "launchUrl failed,error: "

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string p2, "CustomTabsManager"

    .line 167
    .line 168
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    const/16 v2, 0x1b65

    .line 172
    .line 173
    :goto_3
    return v2
.end method

.method public final b0()I
    .locals 7

    .line 1
    const-string v0, "custom_tab"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0, v2}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v2, :cond_7

    .line 32
    .line 33
    instance-of v1, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v0, v4

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, v4

    .line 49
    :goto_1
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v2, "customTabGroup"

    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move-object v1, v4

    .line 67
    :goto_2
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getLayerId()Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move-object v2, v4

    .line 75
    :goto_3
    sput-object v2, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getExpId()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move-object v2, v4

    .line 85
    :goto_4
    sput-object v2, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    move-object v0, v4

    .line 95
    :goto_5
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 96
    .line 97
    const-string v0, "true"

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v5, 0x2

    .line 101
    invoke-static {v1, v0, v2, v5, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 112
    .line 113
    const/16 v0, 0x1b6a

    .line 114
    .line 115
    return v0

    .line 116
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 121
    .line 122
    const/16 v0, 0x1b66

    .line 123
    .line 124
    return v0

    .line 125
    :cond_7
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const-wide/16 v5, 0x0

    .line 130
    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    .line 134
    .line 135
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 136
    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 142
    .line 143
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 148
    .line 149
    const/4 v0, 0x3

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 155
    .line 156
    const/16 v0, 0x1b6b

    .line 157
    .line 158
    return v0

    .line 159
    :cond_8
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_b

    .line 164
    .line 165
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 166
    .line 167
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 172
    .line 173
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 178
    .line 179
    instance-of v1, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 180
    .line 181
    if-eqz v1, :cond_9

    .line 182
    .line 183
    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    move-object v0, v4

    .line 187
    :goto_6
    if-eqz v0, :cond_a

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;->getCode()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    :cond_a
    sput-object v4, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    .line 198
    .line 199
    const/4 v0, 0x4

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 205
    .line 206
    const/16 v0, 0x1b6c

    .line 207
    .line 208
    return v0

    .line 209
    :cond_b
    const/4 v0, 0x5

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 215
    .line 216
    const/16 v0, 0x1b6d

    .line 217
    .line 218
    return v0
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getOpenDefaultBycIds()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    xor-int/2addr v2, v3

    .line 22
    if-ne v2, v3, :cond_4

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/16 p1, 0x1b68

    .line 68
    .line 69
    return p1

    .line 70
    :cond_4
    :goto_1
    const/4 p1, -0x1

    .line 71
    return p1
.end method

.method public final c0()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableDefaultBrowserSwitch()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public final e0()Ljava/lang/Long;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    cmp-long v5, v5, v2

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v1, v4

    .line 23
    :goto_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    const-string v1, "s_ab_layer_id"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    cmp-long v5, v5, v2

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v1, v4

    .line 48
    :goto_1
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    const-string v1, "s_ab_exp_id"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    cmp-long v2, v5, v2

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move-object v1, v4

    .line 73
    :goto_2
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    const-string v3, "var_id"

    .line 80
    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    :cond_5
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    move-object v1, v4

    .line 96
    :goto_3
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const-string v2, "s_ab_reason"

    .line 103
    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    :cond_7
    sget-boolean v1, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    move-object v2, v4

    .line 117
    :goto_4
    if-eqz v2, :cond_9

    .line 118
    .line 119
    const-string v1, "s_ab_push"

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_9
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 126
    .line 127
    if-nez v1, :cond_a

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_b

    .line 135
    .line 136
    :goto_5
    move-object v4, v1

    .line 137
    :cond_b
    if-eqz v4, :cond_c

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    const-string v2, "s_ab_status"

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    :catchall_0
    :cond_c
    return-object v0
.end method

.method public final g0()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    .line 8
    .line 9
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    .line 19
    .line 20
    sput-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    .line 21
    .line 22
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    .line 23
    .line 24
    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    .line 25
    .line 26
    return-void
.end method

.method public final m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "com.android.chrome"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    move-object p1, v0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    :cond_2
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    return-object v0
.end method

.method public final o(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "cct_switch_state"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Ll7/a;->g(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/16 p2, 0x1b61

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    const/16 p2, 0x1b64

    .line 21
    .line 22
    if-eq p1, p2, :cond_1

    .line 23
    .line 24
    const/16 p2, 0x1b66

    .line 25
    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    const/16 p2, 0x1b5e

    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    const/16 p2, 0x1b5f

    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    .line 36
    const/16 p2, 0x1b5d

    .line 37
    .line 38
    if-eq p1, p2, :cond_1

    .line 39
    .line 40
    const/16 p2, 0x1b68

    .line 41
    .line 42
    if-eq p1, p2, :cond_1

    .line 43
    .line 44
    const/16 p2, 0x1b69

    .line 45
    .line 46
    if-eq p1, p2, :cond_1

    .line 47
    .line 48
    const/4 p2, -0x1

    .line 49
    if-eq p1, p2, :cond_1

    .line 50
    .line 51
    :cond_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, v2, p1}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    const-string p2, "cct_switch_timestamp"

    .line 67
    .line 68
    invoke-virtual {p1, p2, v0, v1}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final r(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onComplete"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$f;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v2, v0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    move-object v6, p4

    .line 25
    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/manager/a$f;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v4, v0

    .line 33
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "preload is "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", preloadEnable is "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v3, v2

    .line 37
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ", realLandUrl is "

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v3, v2

    .line 53
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "CustomTabsManager"

    .line 61
    .line 62
    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-nez p3, :cond_2

    .line 66
    .line 67
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableWarmUp()Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move-object v0, v2

    .line 88
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    if-nez p3, :cond_4

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v6, Lcom/cloud/hisavana/sdk/manager/a$h;

    .line 106
    .line 107
    invoke-direct {v6, p1, p2, p3, v2}, Lcom/cloud/hisavana/sdk/manager/a$h;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLkotlin/coroutines/Continuation;)V

    .line 108
    .line 109
    .line 110
    const/4 v7, 0x3

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 115
    .line 116
    .line 117
    return-void
.end method
