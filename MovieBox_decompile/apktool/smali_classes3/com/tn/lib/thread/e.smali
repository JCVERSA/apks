.class public final Lcom/tn/lib/thread/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/thread/a;


# instance fields
.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "mRunnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tn/lib/thread/e;->b:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/thread/e;->b:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tn/lib/thread/a;->a:Lcom/tn/lib/thread/a$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tn/lib/thread/a$a;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0
.end method
