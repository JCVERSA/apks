.class public abstract Ltz5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static volatile b:I

.field public static volatile c:Z

.field public static d:Ljava/util/concurrent/ScheduledFuture;

.field public static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ltz5;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput v0, Ltz5;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Ltz5;->c:Z

    new-instance v0, Lsz5;

    invoke-direct {v0}, Lsz5;-><init>()V

    sput-object v0, Ltz5;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Ltz5;->d()V

    return-void
.end method

.method public static b(ZI)V
    .locals 2

    sget-object v0, Ltz5;->a:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Ltz5;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p0, Ltz5;->c:Z

    :goto_0
    sput-boolean p0, Ltz5;->c:Z

    sget p0, Ltz5;->b:I

    add-int/2addr p0, p1

    sput p0, Ltz5;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Ltz5;->a:Ljava/lang/Boolean;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Ltz5;->c:Z

    const/4 v1, 0x0

    sput v1, Ltz5;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic d()V
    .locals 2

    sget-boolean v0, Ltz5;->c:Z

    sget v1, Ltz5;->b:I

    invoke-static {v0, v1}, Ltz5;->i(ZI)V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Ltz5;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Liea;->b(Ljava/util/concurrent/ScheduledFuture;Z)V

    const/4 v0, 0x0

    sput-object v0, Ltz5;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static f(Z)V
    .locals 5

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMediaStoreChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MarkNewAudioNotification"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "vd_mediastore_change"

    const-wide/16 v3, 0x246c

    invoke-static {v0, v2, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static g(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNotificationDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarkNewAudioNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "vd_newmedianotice_cl"

    const-string v0, "duration"

    invoke-static {p1, v0, p0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(ZI)V
    .locals 2

    invoke-static {}, Ltz5;->e()V

    if-nez p0, :cond_0

    sget v0, Ltz5;->b:I

    if-lez v0, :cond_0

    sget-boolean v0, Ltz5;->c:Z

    sget v1, Ltz5;->b:I

    invoke-static {v0, v1}, Ltz5;->i(ZI)V

    :cond_0
    invoke-static {p0, p1}, Ltz5;->b(ZI)V

    sget-object p0, Ltz5;->e:Ljava/lang/Runnable;

    const/4 p1, 0x0

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1, p0, p1}, Liea;->c(JLjava/lang/Runnable;Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Ltz5;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static i(ZI)V
    .locals 7

    invoke-static {}, Lcom/blankj/utilcode/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "in_app"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "True"

    goto :goto_1

    :cond_1
    const-string v1, "False"

    :goto_1
    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v3, "is_update"

    invoke-virtual {v2, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v4, "songs_count"

    invoke-virtual {v2, v4, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v5, "scene"

    invoke-virtual {v2, v5, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNotificationVisible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isUpdate = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarkNewAudioNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "vd_newmedianotice_show"

    const-wide/16 v0, 0x246c

    invoke-static {v2, v6, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    invoke-static {}, Ltz5;->c()V

    return-void
.end method
