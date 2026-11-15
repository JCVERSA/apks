.class public Lcom/transsion/xuanniao/account/model/data/ErrorExtend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentTime:J

.field private endTime:Ljava/lang/Long;

.field public needCaptcha:Z

.field public remainingTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/Long;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->remainingTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
