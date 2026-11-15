.class final Lcom/journeyapps/barcodescanner/camera/h$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/camera/p;

.field private b:Laf/q;

.field final synthetic c:Lcom/journeyapps/barcodescanner/camera/h;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->a:Lcom/journeyapps/barcodescanner/camera/p;

    .line 2
    .line 3
    return-void
.end method

.method public b(Laf/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->b:Laf/q;

    .line 2
    .line 3
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->b:Laf/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->a:Lcom/journeyapps/barcodescanner/camera/p;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    new-instance p2, Laf/r;

    .line 20
    .line 21
    iget v4, v0, Laf/q;->a:I

    .line 22
    .line 23
    iget v5, v0, Laf/q;->b:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/h;->g()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    move-object v2, p2

    .line 32
    move-object v3, p1

    .line 33
    invoke-direct/range {v2 .. v7}, Laf/r;-><init>([BIIII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h$a;->c:Lcom/journeyapps/barcodescanner/camera/h;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/camera/h;->a(Lcom/journeyapps/barcodescanner/camera/h;)Landroid/hardware/Camera$CameraInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Laf/r;->e(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v1, p2}, Lcom/journeyapps/barcodescanner/camera/p;->b(Laf/r;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 58
    .line 59
    const-string p2, "No preview data received"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/h;->b()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string v0, "Camera preview failed"

    .line 70
    .line 71
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, p1}, Lcom/journeyapps/barcodescanner/camera/p;->a(Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/h;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    new-instance p1, Ljava/lang/Exception;

    .line 84
    .line 85
    const-string p2, "No resolution available"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, p1}, Lcom/journeyapps/barcodescanner/camera/p;->a(Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_2
    return-void
.end method
