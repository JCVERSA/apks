.class public final synthetic Ls2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2b;->a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    iput p2, p0, Ls2b;->b:I

    iput-boolean p3, p0, Ls2b;->c:Z

    iput-object p4, p0, Ls2b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ls2b;->a:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    iget v1, p0, Ls2b;->b:I

    iget-boolean v2, p0, Ls2b;->c:Z

    iget-object p0, p0, Ls2b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;->e(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;IZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
