.class Lcom/transsion/ga/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/transsion/ga/AthenaAnalytics;


# direct methods
.method constructor <init>(Lcom/transsion/ga/AthenaAnalytics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/transsion/athena/athena$athena;->a(Landroid/os/IBinder;)Lcom/transsion/athena/athena;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/transsion/ga/AthenaAnalytics;->h(Lcom/transsion/ga/AthenaAnalytics;Lcom/transsion/athena/athena;)Lcom/transsion/athena/athena;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-static {p1, p2}, Lcom/transsion/ga/AthenaAnalytics;->q(Lcom/transsion/ga/AthenaAnalytics;Z)Z

    .line 14
    .line 15
    .line 16
    const-string p1, "AthenaTrackService onServiceConnected"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->j(Lcom/transsion/ga/AthenaAnalytics;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/transsion/athena/data/TrackDataWrapper;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsion/athena/data/TrackData;->c()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/high16 v1, 0x80000

    .line 52
    .line 53
    if-ge v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->b()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->o(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const-string p2, "TrackData size is too large, ignored !!"

    .line 76
    .line 77
    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->j(Lcom/transsion/ga/AthenaAnalytics;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/ga/AthenaAnalytics;->q(Lcom/transsion/ga/AthenaAnalytics;Z)Z

    .line 5
    .line 6
    .line 7
    const-string p1, "AthenaTrackService onServiceDisconnected"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
