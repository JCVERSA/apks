.class public abstract Lcom/transsion/arch/threads/TaskExecutor$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/arch/threads/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field mCallback:Ljava/lang/Runnable;

.field public mData:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/arch/threads/TaskExecutor$Task$1;

    invoke-direct {v0, p0}, Lcom/transsion/arch/threads/TaskExecutor$Task$1;-><init>(Lcom/transsion/arch/threads/TaskExecutor$Task;)V

    iput-object v0, p0, Lcom/transsion/arch/threads/TaskExecutor$Task;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/arch/threads/TaskExecutor$Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/arch/threads/TaskExecutor$Task;->mResult:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public abstract onBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final run()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/arch/threads/TaskExecutor$Task;->mResult:Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/arch/threads/TaskExecutor$Task;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
