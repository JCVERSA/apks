.class public final synthetic Lhwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhwa;->a:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    return-void
.end method


# virtual methods
.method public final handleInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    iget-object p0, p0, Lhwa;->a:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->a(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V

    return-void
.end method
