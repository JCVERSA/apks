.class public final Lxc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/Choreographer;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lxc$c;->a:Landroid/view/Choreographer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lxc$c;->b:Landroid/os/Looper;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lxc$c;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lxc$c;->a:Landroid/view/Choreographer;

    new-instance v0, Lyc;

    invoke-direct {v0, p1}, Lyc;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
