.class public final synthetic Ld3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

.field public final synthetic b:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iput-object p2, p0, Ld3b;->b:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

    iput p3, p0, Ld3b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ld3b;->a:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    iget-object v1, p0, Ld3b;->b:Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;

    iget p0, p0, Ld3b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;->j(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
