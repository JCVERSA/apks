.class public Lcom/snaptube/taskManager/task/TaskException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private error:Lcom/snaptube/taskManager/task/TaskError;


# direct methods
.method public constructor <init>(Lcom/snaptube/taskManager/task/TaskError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/TaskException;->error:Lcom/snaptube/taskManager/task/TaskError;

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/TaskException;->error:Lcom/snaptube/taskManager/task/TaskError;

    return-void
.end method


# virtual methods
.method public getError()Lcom/snaptube/taskManager/task/TaskError;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/TaskException;->error:Lcom/snaptube/taskManager/task/TaskError;

    return-object v0
.end method
