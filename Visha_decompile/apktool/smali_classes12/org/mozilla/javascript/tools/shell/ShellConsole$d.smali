.class public Lorg/mozilla/javascript/tools/shell/ShellConsole$d;
.super Lorg/mozilla/javascript/tools/shell/ShellConsole;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/shell/ShellConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/io/PrintWriter;

.field public final c:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->a:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->c:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getIn()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public print(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->c:Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->b:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$d;->c:Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
