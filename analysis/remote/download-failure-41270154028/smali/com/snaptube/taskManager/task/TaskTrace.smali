.class public Lcom/snaptube/taskManager/task/TaskTrace;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/TaskTrace$a;
    }
.end annotation


# static fields
.field public static final TYPE_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final TYPE_LOG:Ljava/lang/String; = "log"

.field private static mTraces:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/snaptube/taskManager/task/TaskTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static mUrlMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enable:Z

.field private id:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/taskManager/task/TaskTrace$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    invoke-static {}, Lo/dr6;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mTraces:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-static {}, Lo/dr6;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mUrlMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/TaskTrace;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/snaptube/taskManager/task/TaskTrace;->id:I

    iput-boolean v0, p0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p0}, Lcom/snaptube/taskManager/task/TaskTrace;->current(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskTrace;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/TaskTrace;->items:Ljava/util/List;

    new-instance v7, Lcom/snaptube/taskManager/task/TaskTrace$a;

    iget v2, p0, Lcom/snaptube/taskManager/task/TaskTrace;->id:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/snaptube/taskManager/task/TaskTrace;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v7

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/snaptube/taskManager/task/TaskTrace$a;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/snaptube/taskManager/task/TaskTrace;->reset(Ljava/lang/String;)V

    new-instance v0, Lcom/snaptube/taskManager/task/TaskTrace;

    invoke-direct {v0}, Lcom/snaptube/taskManager/task/TaskTrace;-><init>()V

    invoke-static {}, Lo/dr6;->e()Z

    move-result v1

    iput-boolean v1, v0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    sget-object v1, Lcom/snaptube/taskManager/task/TaskTrace;->mTraces:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static current(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskTrace;
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mTraces:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snaptube/taskManager/task/TaskTrace;

    return-object p0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/snaptube/taskManager/task/TaskTrace;->current(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/snaptube/taskManager/task/TaskTrace;->getOriginCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const-string p1, "exception"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/snaptube/taskManager/task/TaskTrace;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static getOriginCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/snaptube/taskManager/task/TaskTrace;->current(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/snaptube/taskManager/task/TaskTrace;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static mapUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mUrlMap:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static recordLog(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/phoenix/slog/SnapTubeLoggerManager;->Instance:Lcom/phoenix/slog/SnapTubeLoggerManager;

    invoke-virtual {v0}, Lcom/phoenix/slog/SnapTubeLoggerManager;->getCommonInfo()Lcom/phoenix/slog/record/log/ILog$CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phoenix/slog/record/log/ILog$CommonInfo;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/taskManager/task/TaskTrace;->current(Ljava/lang/String;)Lcom/snaptube/taskManager/task/TaskTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/snaptube/taskManager/task/TaskTrace;->enable:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/snaptube/taskManager/task/TaskTrace;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/snaptube/taskManager/task/TaskTrace;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/task/TaskTrace$a;

    const-string v3, "\nid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/TaskTrace$a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\ntype: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/TaskTrace$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ntimestamp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/TaskTrace$a;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nmessage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/TaskTrace$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/phoenix/slog/SnapTubeLoggerManager;->Instance:Lcom/phoenix/slog/SnapTubeLoggerManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/phoenix/slog/SnapTubeLoggerManager;->recordFeedbackDownloadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static reportDownloadLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mUrlMap:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lo/hr6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/hr6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lo/hr6;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/hr6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/phoenix/slog/SnapTubeLoggerManager;->Instance:Lcom/phoenix/slog/SnapTubeLoggerManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/phoenix/slog/SnapTubeLoggerManager;->checkFeedbackDownloadLog(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public static reset(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskTrace;->mTraces:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
