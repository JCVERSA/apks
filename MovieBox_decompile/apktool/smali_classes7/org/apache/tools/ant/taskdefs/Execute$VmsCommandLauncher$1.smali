.class Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;
.super Ljava/lang/Thread;
.source "source.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/tools/ant/taskdefs/g$h;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$p:Ljava/lang/Process;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/g$h;Ljava/lang/Process;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;->this$0:Lorg/apache/tools/ant/taskdefs/g$h;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;->val$p:Ljava/lang/Process;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;->val$f:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;->val$p:Ljava/lang/Process;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;->val$f:Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->g(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
