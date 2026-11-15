.class public final synthetic La0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-boolean p2, p0, La0b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-boolean p0, p0, La0b;->b:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->k(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
