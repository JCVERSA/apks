.class Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;
.super Ljava/lang/Thread;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessDestroyerImpl"
.end annotation


# instance fields
.field private shouldDestroy:Z

.field private final synthetic this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;)V
    .locals 1

    .line 1
    const-string v0, "ProcessDestroyer Shutdown Hook"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->this$0:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->run()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShouldDestroy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer$ProcessDestroyerImpl;->shouldDestroy:Z

    .line 2
    .line 3
    return-void
.end method
