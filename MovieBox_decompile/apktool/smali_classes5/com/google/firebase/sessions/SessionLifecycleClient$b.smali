.class public final Lcom/google/firebase/sessions/SessionLifecycleClient$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SessionLifecycleClient;-><init>(Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/sessions/SessionLifecycleClient;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SessionLifecycleClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Connected to SessionLifecycleService. Queue size "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->c(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 25
    .line 26
    new-instance v0, Landroid/os/Messenger;

    .line 27
    .line 28
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->f(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Messenger;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-static {p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleClient;->g(Lcom/google/firebase/sessions/SessionLifecycleClient;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->a(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleClient;->d(Lcom/google/firebase/sessions/SessionLifecycleClient;Ljava/util/List;)Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->f(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Messenger;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->g(Lcom/google/firebase/sessions/SessionLifecycleClient;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
