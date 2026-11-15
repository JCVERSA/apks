.class public Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBoundsInWindow:Landroid/graphics/Rect;

.field public mConnection:Landroid/view/IScrollCaptureConnection;

.field public mDescription:Ljava/lang/String;

.field public mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageName:Ljava/lang/String;

.field public mWindowBounds:Landroid/graphics/Rect;

.field public mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mBoundsInWindow:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mMessages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/view/IScrollCaptureConnection;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    :cond_0
    return-void
.end method

.method public getBoundsInWindow()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    return-object p0
.end method

.method public getConnectionAsBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionIsNull()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getWindowTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mWindowTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
