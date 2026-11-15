.class Lorg/mvel2/sh/ShellSession$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/mvel2/sh/a;

.field final synthetic val$outStream:Ljava/io/OutputStream;

.field final synthetic val$p:Ljava/lang/Process;

.field final synthetic val$runState:Lorg/mvel2/sh/a$a;

.field final synthetic val$sysPrintStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lorg/mvel2/sh/a;Lorg/mvel2/sh/a$a;Ljava/io/OutputStream;Ljava/lang/Process;Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/sh/ShellSession$2;->this$0:Lorg/mvel2/sh/a;

    .line 2
    .line 3
    iput-object p3, p0, Lorg/mvel2/sh/ShellSession$2;->val$outStream:Ljava/io/OutputStream;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/mvel2/sh/ShellSession$2;->val$p:Ljava/lang/Process;

    .line 6
    .line 7
    iput-object p5, p0, Lorg/mvel2/sh/ShellSession$2;->val$sysPrintStream:Ljava/io/PrintStream;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/sh/ShellSession$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/mvel2/sh/ShellSession$2$1;-><init>(Lorg/mvel2/sh/ShellSession$2;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$2;->val$p:Ljava/lang/Process;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$2;->val$sysPrintStream:Ljava/io/PrintStream;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    throw v0
.end method
