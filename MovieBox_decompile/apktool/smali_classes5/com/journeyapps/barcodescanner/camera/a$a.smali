.class Lcom/journeyapps/barcodescanner/camera/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$a;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a$a;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/a;->a(Lcom/journeyapps/barcodescanner/camera/a;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$a;->a:Lcom/journeyapps/barcodescanner/camera/a;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/camera/a;->b(Lcom/journeyapps/barcodescanner/camera/a;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method
