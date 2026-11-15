.class public final Lbx9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbx9$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbx9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbx9$a;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(Lc74;)V
    .locals 0

    invoke-static {p0}, Lbx9$a;->c(Lc74;)V

    return-void
.end method

.method public static final c(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(JLc74;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbx9$a;->cancel()V

    new-instance v0, Lax9;

    invoke-direct {v0, p3}, Lax9;-><init>(Lc74;)V

    iput-object v0, p0, Lbx9$a;->b:Ljava/lang/Runnable;

    iget-object p0, p0, Lbx9$a;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lbx9$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbx9$a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbx9$a;->b:Ljava/lang/Runnable;

    return-void
.end method
