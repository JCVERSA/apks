.class Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/h;->w()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/h;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Failed to close camera"

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_closed:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/k;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/k;->b()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
