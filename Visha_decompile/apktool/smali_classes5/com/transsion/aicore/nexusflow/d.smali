.class public final Lcom/transsion/aicore/nexusflow/d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.aicore.nexusflow.FlowManager$executeInitialization$1"
    f = "FlowManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/b;

.field public final synthetic b:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field public final synthetic c:J

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/b;Le74;JLandroid/os/Bundle;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/aicore/nexusflow/b;",
            "Le74;",
            "J",
            "Landroid/os/Bundle;",
            "Lwh1<",
            "-",
            "Lcom/transsion/aicore/nexusflow/d;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/d;->b:Le74;

    iput-wide p3, p0, Lcom/transsion/aicore/nexusflow/d;->c:J

    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/d;->d:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static final a(JLandroid/os/Bundle;Landroid/os/Bundle;)Lzfb;
    .locals 4

    const-string v0, "action"

    const-string v1, "FLOW_INIT"

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flowId"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timeout_ms"

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string v0, "timestamp"

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p2, p3}, Ls2d;->d(Landroid/os/Bundle;Landroid/os/Bundle;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/aicore/nexusflow/d;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/d;->b:Le74;

    iget-wide v3, p0, Lcom/transsion/aicore/nexusflow/d;->c:J

    iget-object v5, p0, Lcom/transsion/aicore/nexusflow/d;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/aicore/nexusflow/d;-><init>(Lcom/transsion/aicore/nexusflow/b;Le74;JLandroid/os/Bundle;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/d;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/d;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/transsion/aicore/nexusflow/d;->c:J

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/d;->d:Landroid/os/Bundle;

    new-instance v2, Lw8d;

    invoke-direct {v2, v0, v1, p1}, Lw8d;-><init>(JLandroid/os/Bundle;)V

    invoke-static {v2}, Ls2d;->c(Le74;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialization parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NexusFlow.Manager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/transsion/aicore/nexusflow/b;->d(Lcom/transsion/aicore/nexusflow/b;)Lp2d;

    const-string p1, "Service not bound, cannot execute initialization"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ls2d;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/d;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
