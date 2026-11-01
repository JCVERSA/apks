.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/snaptube/taskManager/task/TaskError;->errorCode:I

    iput-object p4, p0, Lcom/snaptube/taskManager/task/TaskError;->description:Ljava/lang/String;

    return-void
.end method
