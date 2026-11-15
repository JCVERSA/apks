.class public Lfreemarker/template/TemplateException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/TemplateException$b;,
        Lfreemarker/template/TemplateException$a;,
        Lfreemarker/template/TemplateException$c;
    }
.end annotation


# static fields
.field private static final FTL_INSTRUCTION_STACK_TRACE_TITLE:Ljava/lang/String; = "FTL stack trace (\"~\" means nesting-related):"

.field private static final FTL_STACK_TOP_FEW_MAX_LINES:I = 0x6


# instance fields
.field private final transient blamedExpression:Lfreemarker/core/t0;

.field private blamedExpressionString:Ljava/lang/String;

.field private blamedExpressionStringCalculated:Z

.field private columnNumber:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private transient descriptionBuilder:Lq0d;

.field private endColumnNumber:Ljava/lang/Integer;

.field private endLineNumber:Ljava/lang/Integer;

.field private final transient env:Lfreemarker/core/Environment;

.field private transient ftlInstructionStackSnapshot:[Lifa;

.field private lineNumber:Ljava/lang/Integer;

.field private transient lock:Ljava/lang/Object;

.field private transient message:Ljava/lang/String;

.field private transient messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

.field private transient messageWithoutStackTop:Ljava/lang/String;

.field private positionsCalculated:Z

.field private renderedFtlInstructionStackSnapshot:Ljava/lang/String;

.field private renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private templateSourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 10
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object p3

    .line 11
    :cond_0
    iput-object p3, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    .line 12
    iput-object p4, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/t0;

    .line 13
    iput-object p5, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lq0d;

    .line 14
    iput-object p1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 15
    invoke-static {p3}, Lfreemarker/core/x1;->b(Lfreemarker/core/Environment;)[Lifa;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method private calculatePosition()V
    .locals 5

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/t0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lfreemarker/core/t1;->n()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iput-object v4, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lfreemarker/core/t1;->n()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lfreemarker/core/t1;->m()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lfreemarker/core/t1;->q()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lfreemarker/core/t1;->p()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private deleteFTLInstructionStackSnapshotIfNotNeeded()V
    .locals 1

    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/t0;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    :cond_1
    return-void
.end method

.method private getDescription()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lq0d;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFailingInstruction()Lifa;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lfreemarker/core/Configurable;->A()Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lq0d;->k(Lifa;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lq0d;

    :cond_1
    iget-object p0, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getFTLInstructionStackTopFew()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_3

    array-length v1, v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iget-object v3, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lfreemarker/core/x1;->c([Lifa;ZLjava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_3

    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    :cond_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    :cond_4
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getFailingInstruction()Lifa;
    .locals 1

    iget-object p0, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private printStackTrace(Lfreemarker/template/TemplateException$c;ZZZ)V
    .locals 1

    .line 9
    monitor-enter p1

    if-eqz p2, :cond_0

    .line 10
    :try_start_0
    const-string p2, "FreeMarker template error:"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getMessageWithoutStackTop()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 13
    invoke-interface {p1}, Lfreemarker/template/TemplateException$c;->d()V

    .line 14
    const-string v0, "----"

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 15
    const-string v0, "FTL stack trace (\"~\" means nesting-related):"

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->b(Ljava/lang/Object;)V

    .line 17
    const-string p2, "----"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 p4, 0x1

    :cond_2
    :goto_1
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 18
    invoke-interface {p1}, Lfreemarker/template/TemplateException$c;->d()V

    .line 19
    const-string p2, "Java stack trace (for programmers):"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 20
    const-string p2, "----"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 21
    iget-object p2, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    if-nez p3, :cond_3

    .line 23
    new-instance p3, Ljava/lang/ThreadLocal;

    invoke-direct {p3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 24
    :cond_3
    :goto_2
    iget-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    :try_start_3
    iget-object p2, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception p2

    iget-object p0, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :goto_3
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 29
    :cond_4
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$c;->a(Ljava/lang/Throwable;)V

    .line 30
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_5

    .line 32
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getRootCause"

    sget-object p4, Lt71;->b:[Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    sget-object p3, Lt71;->a:[Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_5

    .line 34
    const-string p2, "ServletException root cause: "

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$c;->c(Ljava/lang/Object;)V

    .line 35
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$c;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 36
    :catchall_3
    :cond_5
    :try_start_7
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private renderMessages()V
    .locals 5

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No error description was specified for this error; low-level message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "[No error description was available.]"

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStackTopFew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "FTL stack trace (\"~\" means nesting-related):"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    iput-object v0, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStackTopFew()Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getDescription()Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getBlamedExpressionString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public getBlamedExpressionString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/t0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    :cond_1
    iget-object p0, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCauseException()Ljava/lang/Exception;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrapped to Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getColumnNumber()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEndColumnNumber()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEndLineNumber()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnvironment()Lfreemarker/core/Environment;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    return-object p0
.end method

.method public getFTLInstructionStack()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    if-nez v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lifa;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lfreemarker/core/x1;->c([Lifa;ZLjava/io/Writer;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    :cond_2
    iget-object p0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const-string p0, "[... Exception message was already printed; see it above ...]"

    return-object p0

    :cond_0
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->renderMessages()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessageWithoutStackTop()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->renderMessages()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTemplateSourceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintStream;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;ZZZ)V
    .locals 1

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    new-instance v0, Lfreemarker/template/TemplateException$a;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$a;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->printStackTrace(Lfreemarker/template/TemplateException$c;ZZZ)V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintWriter;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;ZZZ)V
    .locals 1

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    new-instance v0, Lfreemarker/template/TemplateException$b;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$b;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->printStackTrace(Lfreemarker/template/TemplateException$c;ZZZ)V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public printStandardStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStandardStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
