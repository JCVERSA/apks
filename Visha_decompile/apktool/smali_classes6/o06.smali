.class public abstract Lo06;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x0L

.field public static b:J = 0x0L

.field public static c:J = 0x0L

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = "playshow"

.field public static f:Ljava/lang/String; = "others"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lo06;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b()J
    .locals 8

    sget-wide v0, Lo06;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-wide v4, Lo06;->b:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    sget-wide v6, Lo06;->c:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    move-wide v2, v4

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public static c()J
    .locals 7

    sget-wide v0, Lo06;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-wide v0, Lo06;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-wide v4, Lo06;->c:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    move-wide v2, v4

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo06;->c:J

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo06;->a:J

    sput-object p0, Lo06;->d:Ljava/lang/String;

    return-void
.end method

.method public static f()V
    .locals 2

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo06;->b:J

    return-void
.end method
