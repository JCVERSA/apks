.class Lcom/lzy/okserver/task/XExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/task/XExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/task/XExecutor;

.field final synthetic val$listener:Lcom/lzy/okserver/task/XExecutor$b;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$b;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor$1;->this$0:Lcom/lzy/okserver/task/XExecutor;

    iput-object p3, p0, Lcom/lzy/okserver/task/XExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
