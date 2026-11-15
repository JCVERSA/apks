.class public Lorg/apache/tools/ant/BuildEvent;
.super Ljava/util/EventObject;
.source "source.java"


# static fields
.field private static final serialVersionUID:J = 0x3efa64801e1212e6L


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private message:Ljava/lang/String;

.field private priority:I

.field private project:Lorg/apache/tools/ant/Project;

.field private target:Lorg/apache/tools/ant/t;

.field private task:Lorg/apache/tools/ant/u;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/apache/tools/ant/BuildEvent;->priority:I

    .line 3
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->project:Lorg/apache/tools/ant/Project;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->target:Lorg/apache/tools/ant/t;

    .line 5
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->task:Lorg/apache/tools/ant/u;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/t;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lorg/apache/tools/ant/BuildEvent;->priority:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/tools/ant/t;->e()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->project:Lorg/apache/tools/ant/Project;

    .line 9
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->target:Lorg/apache/tools/ant/t;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->task:Lorg/apache/tools/ant/u;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/u;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lorg/apache/tools/ant/BuildEvent;->priority:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->project:Lorg/apache/tools/ant/Project;

    .line 14
    invoke-virtual {p1}, Lorg/apache/tools/ant/u;->g()Lorg/apache/tools/ant/t;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->target:Lorg/apache/tools/ant/t;

    .line 15
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->task:Lorg/apache/tools/ant/u;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->exception:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/BuildEvent;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->project:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget()Lorg/apache/tools/ant/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->target:Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTask()Lorg/apache/tools/ant/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildEvent;->task:Lorg/apache/tools/ant/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->exception:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/BuildEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lorg/apache/tools/ant/BuildEvent;->priority:I

    .line 4
    .line 5
    return-void
.end method
