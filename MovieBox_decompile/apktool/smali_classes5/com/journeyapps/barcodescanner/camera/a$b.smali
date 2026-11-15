.class Lcom/journeyapps/barcodescanner/camera/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/a;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/camera/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a$b;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/a;->d(Lcom/journeyapps/barcodescanner/camera/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/a;->e(Lcom/journeyapps/barcodescanner/camera/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/camera/a;->c(Lcom/journeyapps/barcodescanner/camera/a;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/journeyapps/barcodescanner/camera/b;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/journeyapps/barcodescanner/camera/b;-><init>(Lcom/journeyapps/barcodescanner/camera/a$b;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
