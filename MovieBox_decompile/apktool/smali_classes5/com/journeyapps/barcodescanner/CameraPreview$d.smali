.class Lcom/journeyapps/barcodescanner/CameraPreview$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Laf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$d;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/CameraPreview$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview$d;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$d;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->g(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$d;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->f(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/journeyapps/barcodescanner/a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/a;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview$d;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0xfa

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
