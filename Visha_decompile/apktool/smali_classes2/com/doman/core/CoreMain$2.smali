.class final Lcom/doman/core/CoreMain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/CoreMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/CoreMain;


# direct methods
.method public constructor <init>(Lcom/doman/core/CoreMain;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain$2;->a:Lcom/doman/core/CoreMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance p0, Lcom/doman/core/c/d;

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/doman/core/a/f;->r:J

    goto :goto_0

    :cond_0
    move-wide v2, v6

    :goto_0
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/doman/core/c/d;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/doman/core/c/d;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    new-instance v2, Lcom/doman/core/c/d$1;

    invoke-direct {v2, p0}, Lcom/doman/core/c/d$1;-><init>(Lcom/doman/core/c/d;)V

    invoke-static {v2, v0, v1}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
