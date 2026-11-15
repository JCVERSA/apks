.class public final synthetic Lyza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput p2, p0, Lyza;->b:I

    iput p3, p0, Lyza;->c:I

    iput-boolean p4, p0, Lyza;->d:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget v1, p0, Lyza;->b:I

    iget v2, p0, Lyza;->c:I

    iget-boolean p0, p0, Lyza;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->i(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IIZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
