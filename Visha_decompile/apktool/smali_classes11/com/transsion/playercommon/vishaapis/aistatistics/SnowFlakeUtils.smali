.class public Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils$Holder;
    }
.end annotation


# static fields
.field private static final MACHINE_BIT:J = 0x5L

.field private static final MACHINE_HOUSE_BIT:J = 0x5L

.field private static final MAX_MACHINE:J = 0x1fL

.field private static final MAX_MACHINE_HOUSE:J = 0x1fL

.field private static final MAX_SEQUENCE:J = 0xfffL

.field private static final SEQUENCE_BIT:J = 0xcL

.field private static final START_STMP:J = 0x17d4c82f25aL


# instance fields
.field private lastTime:J

.field private machineHouseID:J

.field private machineID:J

.field private sequence:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->lastTime:J

    iput-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->sequence:J

    iput-wide p1, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineID:J

    iput-wide p3, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineHouseID:J

    return-void
.end method

.method public static final getInstance()Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils$Holder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;

    return-object v0
.end method

.method private getNextMill()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->lastTime:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    new-instance p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;-><init>(JJ)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->nextId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMachineHouseID()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineHouseID:J

    return-wide v0
.end method

.method public getMachineID()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineID:J

    return-wide v0
.end method

.method public declared-synchronized nextId()J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineHouseID:J

    const-wide/16 v2, 0x1f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineID:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->lastTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    iget-wide v5, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->sequence:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/16 v7, 0xfff

    and-long/2addr v5, v7

    iput-wide v5, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->sequence:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->getNextMill()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iput-wide v3, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->sequence:J

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->lastTime:J

    const-wide v2, 0x17d4c82f25aL

    sub-long/2addr v0, v2

    const/16 v2, 0x16

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineID:J

    const/16 v4, 0xc

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineHouseID:J

    const/16 v4, 0x11

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->sequence:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5f53\u524d\u65f6\u95f4\u4e3a\u5f02\u5e38\u503c\uff0c\u8bf7\u52ff\u56de\u62e8\u65f6\u95f4\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u673a\u623fID\u6216\u673a\u5668ID\u8d85\u51fa\u6700\u5927\u503c"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMachineHouseID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineHouseID:J

    return-void
.end method

.method public setMachineID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;->machineID:J

    return-void
.end method
