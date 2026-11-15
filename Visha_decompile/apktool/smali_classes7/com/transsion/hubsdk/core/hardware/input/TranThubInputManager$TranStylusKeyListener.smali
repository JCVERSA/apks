.class public Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;
.super Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranStylusKeyListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;->this$0:Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/view/inputmethod/ITranStylusKeyListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;->mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;

    return-void
.end method


# virtual methods
.method public onKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/input/TranThubInputManager$TranStylusKeyListener;->mListener:Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;->onKeyEvent(ILandroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method
