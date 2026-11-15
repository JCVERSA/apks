.class Lcom/journeyapps/barcodescanner/d$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/d;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->h(Lcom/journeyapps/barcodescanner/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/journeyapps/barcodescanner/d;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->j(Lcom/journeyapps/barcodescanner/d;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/d;->g(Lcom/journeyapps/barcodescanner/d;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/d;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method
