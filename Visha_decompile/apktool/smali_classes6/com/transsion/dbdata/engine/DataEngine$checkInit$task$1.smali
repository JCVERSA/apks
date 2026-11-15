.class public final Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/engine/DataEngine;->t(Landroid/content/Context;Lc74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/dbdata/engine/DataEngine$checkInit$task$1",
        "Lcom/transsion/arch/threads/TaskExecutor$Task;",
        "Ljava/lang/Void;",
        "onBackground",
        "()Ljava/lang/Void;",
        "result",
        "Lzfb;",
        "onResult",
        "(Ljava/lang/Void;)V",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $runnable:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->$runnable:Lc74;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    iget-object p0, p0, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->l(Lcom/transsion/dbdata/engine/DataEngine;Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onResult(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/dbdata/engine/DataEngine$checkInit$task$1;->$runnable:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method
