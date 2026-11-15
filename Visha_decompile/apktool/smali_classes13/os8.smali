.class public abstract Los8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFirstClickTime:J

.field private mIntervalTime:J

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Los8;->mIntervalTime:J

    const-string v0, "RepeatClickListener"

    iput-object v0, p0, Los8;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onClick()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Los8;->mTag:Ljava/lang/String;

    iget-wide v1, p0, Los8;->mFirstClickTime:J

    iget-wide v3, p0, Los8;->mIntervalTime:J

    invoke-static {v0, v1, v2, v3, v4}, Loa1;->b(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Los8;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick ingoreClickEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Los8;->mFirstClickTime:J

    .line 4
    invoke-virtual {p0}, Los8;->onClick()V

    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    iput-wide p1, p0, Los8;->mIntervalTime:J

    return-void
.end method
