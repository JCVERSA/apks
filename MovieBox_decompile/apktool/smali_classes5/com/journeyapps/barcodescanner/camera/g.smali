.class public final synthetic Lcom/journeyapps/barcodescanner/camera/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field public final synthetic b:Lcom/journeyapps/barcodescanner/camera/p;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/g;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/g;->b:Lcom/journeyapps/barcodescanner/camera/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/g;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/g;->b:Lcom/journeyapps/barcodescanner/camera/p;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
