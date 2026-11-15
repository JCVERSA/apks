.class public final synthetic Lcom/transsion/transfer/androidasync/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/d;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/d;->b:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/d;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/d;->b:Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
