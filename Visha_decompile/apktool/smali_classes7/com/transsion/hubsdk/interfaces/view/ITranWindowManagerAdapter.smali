.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/ITranWindowManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAppRefreshRate(Ljava/lang/String;)I
.end method

.method public abstract getDefaultRefreshRateConfigList()Ljava/lang/String;
.end method

.method public abstract getFocusedWindowTitle()Ljava/lang/String;
.end method

.method public abstract getNoSupportApplicationInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonUltraSmallApps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateFlags(Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract getRefreshRateConfigList()Ljava/lang/String;
.end method

.method public abstract getRootPinnedTaskPkgName()Ljava/lang/String;
.end method

.method public abstract getSharedScreenPkgName()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSwitchMode()I
.end method

.method public abstract getTopResumedActivityPkgName()Ljava/lang/String;
.end method

.method public abstract getTranPictureList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTranPictureSupportMode()[I
.end method

.method public abstract getUltraSmallAppMode(Ljava/lang/String;)I
.end method

.method public abstract hasMultiWindowForXDR()Z
.end method

.method public abstract hookWindowScene(III)V
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract setCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setInputFeatures(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setOSFullDialog(Landroid/view/WindowManager$LayoutParams;Z)V
.end method

.method public abstract setPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract setRefreshRateConfigList(Ljava/lang/String;)V
.end method

.method public abstract setTranPictureMode(ILjava/lang/String;)V
.end method

.method public abstract setTrustedOverlay(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract switchMode(I)V
.end method

.method public abstract tranScreenshotWallpaperLocked()Landroid/graphics/Bitmap;
.end method

.method public abstract updateNoSupportApplicationInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNonUltraSmallApps(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
