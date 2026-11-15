.class public final Lcom/android/net/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/net/f$1;

    invoke-direct {v0, p0, p1}, Lcom/android/net/f$1;-><init>(Lcom/android/net/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/net/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/n;Lcom/android/net/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Lcom/android/net/p<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/net/f;->a(Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Lcom/android/net/p<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/net/n;->k()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/net/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/net/f$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/net/f$a;-><init>(Lcom/android/net/f;Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/net/n;Lcom/android/net/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Lcom/android/net/u;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/net/p;->a(Lcom/android/net/u;)Lcom/android/net/p;

    move-result-object p2

    iget-object v0, p0, Lcom/android/net/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/net/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/net/f$a;-><init>(Lcom/android/net/f;Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
