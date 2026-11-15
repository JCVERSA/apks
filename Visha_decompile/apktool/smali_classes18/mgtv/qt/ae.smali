.class final Lmgtv/qt/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lmgtv/qt/b;


# direct methods
.method public constructor <init>(Lmgtv/qt/b;)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/ae;->a:Lmgtv/qt/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    sget p0, Lmgtv/qt/c;->l:I

    if-nez p0, :cond_2

    invoke-static {}, Ls3d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ls3d;->a(J)J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    invoke-static {}, Ls3d;->d()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmgtv/qt/c;->j:Landroid/content/Context;

    invoke-static {v6}, Lhld;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u5230\u540e\u53f0   \u4f7f\u7528\u65f6\u957f "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " \u79d2 process: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lhld;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmgtv/qt/c;->f(Ljava/lang/String;)V

    new-instance p0, Ls4d;

    sget-object v6, Ls3d;->a:Ljava/lang/String;

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const-string v2, "0"

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v0, v1, v6, v2}, Ls4d;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmgtv/qt/c;->a()V

    invoke-static {}, Lmgtv/qt/c;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
