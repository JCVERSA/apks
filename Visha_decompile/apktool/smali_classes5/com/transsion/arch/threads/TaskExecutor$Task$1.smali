.class Lcom/transsion/arch/threads/TaskExecutor$Task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/arch/threads/TaskExecutor$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/arch/threads/TaskExecutor$Task;


# direct methods
.method public constructor <init>(Lcom/transsion/arch/threads/TaskExecutor$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/arch/threads/TaskExecutor$Task$1;->this$0:Lcom/transsion/arch/threads/TaskExecutor$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/arch/threads/TaskExecutor$Task$1;->this$0:Lcom/transsion/arch/threads/TaskExecutor$Task;

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;->a(Lcom/transsion/arch/threads/TaskExecutor$Task;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onResult(Ljava/lang/Object;)V

    return-void
.end method
