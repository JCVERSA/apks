.class public Lorg/mozilla/javascript/tools/shell/ShellConsole$b;
.super Lorg/mozilla/javascript/tools/shell/ShellConsole;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/shell/ShellConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    new-instance p1, Lorg/mozilla/javascript/tools/shell/ShellConsole$a;

    invoke-direct {p1, p0, p2}, Lorg/mozilla/javascript/tools/shell/ShellConsole$a;-><init>(Lorg/mozilla/javascript/tools/shell/ShellConsole;Ljava/nio/charset/Charset;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$000()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "flushConsole"

    invoke-static {p0, v2, v0, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getIn()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->b:Ljava/io/InputStream;

    return-object p0
.end method

.method public print(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$200()[Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "printString"

    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public println()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$000()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "printNewline"

    invoke-static {p0, v2, v0, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$200()[Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "printString"

    invoke-static {v0, v2, v1, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$000()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "printNewline"

    invoke-static {p0, v1, p1, v0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$000()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "readLine"

    invoke-static {p0, v2, v0, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$b;->a:Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$200()[Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "readLine"

    invoke-static {p0, v1, v0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
