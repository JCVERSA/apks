.class public interface abstract Lcom/transsion/hubsdk/interfaces/window/ITranWindowManagerExtAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dismissKeyguard(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract endCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;)V
.end method

.method public abstract getBuffer(ILandroid/graphics/Rect;)Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
.end method

.method public abstract getDockedStackSide()I
.end method

.method public abstract getInitialDisplayDensity(I)I
.end method

.method public abstract notifyScreenshotListeners(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
.end method

.method public abstract registerSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
.end method

.method public abstract requestImage(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/graphics/Rect;)V
.end method

.method public abstract requestScrollCapture(Landroid/content/Context;ILandroid/os/IBinder;ILcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$ITranScrollCaptureResponseListener;)V
.end method

.method public abstract startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
.end method

.method public abstract unregisterDisplayFoldListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
.end method

.method public abstract unregisterSystemGestureExclusionListener(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;I)V
.end method
