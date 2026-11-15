.class Lcom/facebook/biddingkit/logging/EventLogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/logging/EventLogUtils$CollectorLineProcessor;,
        Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;,
        Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;,
        Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessorWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_STACKTRACE_LINES:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {p0, v0}, Lcom/facebook/biddingkit/logging/EventLogUtils;->throwableToString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static throwableToString(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 4

    .line 2
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/biddingkit/logging/EventLogUtils$CollectorLineProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/logging/EventLogUtils$CollectorLineProcessor;-><init>(Lcom/facebook/biddingkit/logging/EventLogUtils$1;)V

    if-ltz p1, :cond_1

    .line 4
    new-instance v2, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;

    invoke-direct {v2, v1, p1}, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;-><init>(Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;I)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 5
    :goto_0
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v3, Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessorWriter;

    invoke-direct {v3, v2}, Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessorWriter;-><init>(Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;)V

    invoke-direct {p1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6
    invoke-interface {v2}, Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;->flush()V

    .line 7
    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/EventLogUtils$CollectorLineProcessor;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
