.class Lg7/e$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg7/e;


# direct methods
.method constructor <init>(Lg7/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg7/e$a;->a:Lg7/e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lg7/e$a;->a:Lg7/e;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lg7/e$a;->a:Lg7/e;

    .line 5
    .line 6
    invoke-static {v0}, Lg7/e;->a(Lg7/e;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v0, p0, Lg7/e$a;->a:Lg7/e;

    .line 17
    .line 18
    invoke-static {v0}, Lg7/e;->b(Lg7/e;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-gtz v4, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lg7/e$a;->a:Lg7/e;

    .line 34
    .line 35
    invoke-virtual {v0}, Lg7/e;->e()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    iget-object v6, p0, Lg7/e$a;->a:Lg7/e;

    .line 44
    .line 45
    invoke-virtual {v6, v0, v1}, Lg7/e;->f(J)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    sub-long/2addr v6, v4

    .line 53
    iget-object v4, p0, Lg7/e$a;->a:Lg7/e;

    .line 54
    .line 55
    invoke-static {v4}, Lg7/e;->c(Lg7/e;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    cmp-long v4, v0, v4

    .line 60
    .line 61
    if-gez v4, :cond_3

    .line 62
    .line 63
    sub-long/2addr v0, v6

    .line 64
    cmp-long v4, v0, v2

    .line 65
    .line 66
    if-gez v4, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-wide v2, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p0, Lg7/e$a;->a:Lg7/e;

    .line 72
    .line 73
    invoke-static {v0}, Lg7/e;->c(Lg7/e;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    sub-long/2addr v0, v6

    .line 78
    :goto_0
    cmp-long v4, v0, v2

    .line 79
    .line 80
    if-gez v4, :cond_2

    .line 81
    .line 82
    iget-object v4, p0, Lg7/e$a;->a:Lg7/e;

    .line 83
    .line 84
    invoke-static {v4}, Lg7/e;->c(Lg7/e;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    add-long/2addr v0, v4

    .line 89
    goto :goto_0

    .line 90
    :goto_1
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 96
    .line 97
    .line 98
    :goto_2
    monitor-exit p1

    .line 99
    return-void

    .line 100
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw v0
.end method
