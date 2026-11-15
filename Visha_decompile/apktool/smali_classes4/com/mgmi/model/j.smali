.class public Lcom/mgmi/model/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/model/j;->a:J

    return-void
.end method
