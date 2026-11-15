.class public abstract Ltu/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Z

.field public static b:J


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "UpgradeSdkManager"

    .line 2
    .line 3
    const-string v1, "tag"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "msg"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ltu/g;->c()Z

    .line 14
    .line 15
    .line 16
    sget-object p0, Lqu/f;->o:Lqu/d;

    .line 17
    .line 18
    invoke-virtual {p0}, Lqu/d;->a()Lqu/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-boolean p0, p0, Lqu/f;->d:Z

    .line 23
    .line 24
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "msg"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ltu/g;->c()Z

    .line 12
    .line 13
    .line 14
    sget-object p0, Lqu/f;->o:Lqu/d;

    .line 15
    .line 16
    invoke-virtual {p0}, Lqu/d;->a()Lqu/f;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-boolean p0, p0, Lqu/f;->d:Z

    .line 21
    .line 22
    return-void
.end method

.method public static c()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-boolean v2, Ltu/g;->a:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    sget-wide v3, Ltu/g;->b:J

    .line 11
    .line 12
    sub-long v3, v0, v3

    .line 13
    .line 14
    const-wide/16 v5, 0x1388

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    if-gez v3, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 22
    .line 23
    const-string v0, "upgradeSdkLog"

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Ltu/g;->a:Z

    .line 34
    .line 35
    :cond_2
    sget-boolean v0, Ltu/g;->a:Z

    .line 36
    .line 37
    return v0
.end method
