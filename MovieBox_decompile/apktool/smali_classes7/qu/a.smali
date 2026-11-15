.class public final Lqu/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lqu/c;
    .locals 1

    .line 1
    sget-object v0, Lqu/c;->e:Lqu/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lqu/c;->e:Lqu/c;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lqu/c;

    .line 11
    .line 12
    invoke-direct {v0}, Lqu/c;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lqu/c;->e:Lqu/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    goto :goto_2

    .line 22
    :goto_1
    monitor-exit p0

    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_2
    return-object v0
.end method
