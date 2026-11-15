.class public final Lcom/cloud/tupdate/net/utils/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u001b\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\n\u001a\u00020\u00062\u0010\u0010\u0017\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0018R$\u0010\u001d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u0010R$\u0010 \u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u0010R\"\u0010\'\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010\u0008\u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/utils/LogUtil;",
        "",
        "<init>",
        "()V",
        "",
        "loggable",
        "Lzfb;",
        "f",
        "(Z)V",
        "",
        "e",
        "d",
        "(Ljava/lang/Throwable;)V",
        "",
        "message",
        "c",
        "(Ljava/lang/String;)V",
        "b",
        "log",
        "a",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "Ljava/lang/StackTraceElement;",
        "sElements",
        "([Ljava/lang/StackTraceElement;)V",
        "Ljava/lang/String;",
        "getClassName",
        "()Ljava/lang/String;",
        "setClassName",
        "className",
        "getMethodName",
        "setMethodName",
        "methodName",
        "",
        "I",
        "getLineNumber",
        "()I",
        "setLineNumber",
        "(I)V",
        "lineNumber",
        "Z",
        "isLoggable",
        "()Z",
        "setLoggable",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/cloud/tupdate/net/utils/LogUtil;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-direct {v0}, Lcom/cloud/tupdate/net/utils/LogUtil;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "================"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v0, Lcom/cloud/tupdate/net/utils/LogUtil;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")================:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/cloud/tupdate/net/utils/LogUtil;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->e([Ljava/lang/StackTraceElement;)V

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tupdate/net/utils/LogUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/cloud/tupdate/net/utils/LogUtil;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->e([Ljava/lang/StackTraceElement;)V

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tupdate/net/utils/LogUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/cloud/tupdate/net/utils/LogUtil;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sw.toString()"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tupdate/net/utils/LogUtil;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e([Ljava/lang/StackTraceElement;)V
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    aget-object v1, p1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sput-object v1, Lcom/cloud/tupdate/net/utils/LogUtil;->b:Ljava/lang/String;

    if-nez p1, :cond_2

    :goto_2
    move-object v1, v0

    goto :goto_3

    :cond_2
    aget-object v1, p1, p0

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    sput-object v1, Lcom/cloud/tupdate/net/utils/LogUtil;->c:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    aget-object v0, p1, p0

    :goto_4
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/cloud/tupdate/net/utils/LogUtil;->d:I

    return-void
.end method

.method public final f(Z)V
    .locals 0

    sput-boolean p1, Lcom/cloud/tupdate/net/utils/LogUtil;->e:Z

    return-void
.end method
