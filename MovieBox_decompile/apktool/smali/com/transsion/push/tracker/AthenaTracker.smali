.class Lcom/transsion/push/tracker/AthenaTracker;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lcom/transsion/push/tracker/AthenaTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method private a(Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;
    .locals 5

    .line 1
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ""

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method private c()Z
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->p:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catch_0
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method private d(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ", "

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ":"

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Athena track event:"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", tid:"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static getInstance()Lcom/transsion/push/tracker/AthenaTracker;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/push/tracker/AthenaTracker;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/push/tracker/AthenaTracker;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method b()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tracker/AthenaTracker;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x411

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "push"

    .line 20
    .line 21
    invoke-static {v0, v3, v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tracker/AthenaTracker;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getIsSdkInitFinished()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x411

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "push"

    .line 30
    .line 31
    invoke-static {v0, v3, v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/tracker/AthenaTracker;->d(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iget v0, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/transsion/push/tracker/AthenaTracker;->a(Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget p1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, p2, p1}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    return-void
.end method
