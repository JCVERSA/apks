.class public Lcom/pgl/ssdk/y0;
.super Lcom/pgl/ssdk/b1;
.source "source.java"

# interfaces
.implements Lcom/pgl/ssdk/z0;


# instance fields
.field private final b:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;Lcom/pgl/ssdk/b1$a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Lcom/pgl/ssdk/b1;-><init>(Landroid/os/Looper;Lcom/pgl/ssdk/b1$a;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/pgl/ssdk/y0;->b:Landroid/os/HandlerThread;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/pgl/ssdk/b1$a;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pgl/ssdk/b1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/pgl/ssdk/y0;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
