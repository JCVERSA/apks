.class public abstract Lcom/amazonaws/internal/SdkInputStream;
.super Ljava/io/InputStream;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkInputStream;->l()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/amazonaws/internal/MetricAware;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method protected h()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final k()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkInputStream;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "FYI"

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance v0, Lcom/amazonaws/AbortedException;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/amazonaws/AbortedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method protected abstract l()Ljava/io/InputStream;
.end method
