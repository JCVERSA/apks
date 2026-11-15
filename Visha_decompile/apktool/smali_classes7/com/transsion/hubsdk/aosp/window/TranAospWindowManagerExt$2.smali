.class Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;
.super Landroid/view/IScrollCaptureResponseListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

.field final synthetic val$responseListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;->this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;->val$responseListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;

    invoke-direct {p0}, Landroid/view/IScrollCaptureResponseListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;-><init>()V

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getConnection()Landroid/view/IScrollCaptureConnection;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getWindowBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getBoundsInWindow()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getWindowTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureResponse;->getMessages()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mMessages:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$2;->val$responseListener:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;->onScrollCaptureResponse(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V

    return-void
.end method
