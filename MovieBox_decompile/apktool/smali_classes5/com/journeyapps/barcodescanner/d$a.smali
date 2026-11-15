.class Lcom/journeyapps/barcodescanner/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Laf/a;


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
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/d$a;Laf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/d$a;->d(Laf/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d(Laf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/d;->B(Laf/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Laf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->d(Lcom/journeyapps/barcodescanner/d;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->e(Lcom/journeyapps/barcodescanner/d;)Lid/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lid/e;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->f(Lcom/journeyapps/barcodescanner/d;)Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/journeyapps/barcodescanner/c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/c;-><init>(Lcom/journeyapps/barcodescanner/d$a;Laf/c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
