.class final Lcom/android/net/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/net/n;

.field final synthetic b:Lcom/android/net/c;


# direct methods
.method public constructor <init>(Lcom/android/net/c;Lcom/android/net/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/c$1;->b:Lcom/android/net/c;

    iput-object p2, p0, Lcom/android/net/c$1;->a:Lcom/android/net/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/net/c$1;->b:Lcom/android/net/c;

    invoke-static {v0}, Lcom/android/net/c;->a(Lcom/android/net/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/android/net/c$1;->a:Lcom/android/net/n;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
