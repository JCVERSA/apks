.class public Lcom/google/firebase/messaging/h;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/h$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/firebase/messaging/h$a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/h$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/h;->b:Lcom/google/firebase/messaging/h$a;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/i$a;Lxda;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/h;->b(Lcom/google/firebase/messaging/i$a;Lxda;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/i$a;Lxda;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/i$a;->d()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/firebase/messaging/i$a;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "service received new intent via bind strategy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/h;->b:Lcom/google/firebase/messaging/h$a;

    iget-object v0, p1, Lcom/google/firebase/messaging/i$a;->a:Landroid/content/Intent;

    invoke-interface {p0, v0}, Lcom/google/firebase/messaging/h$a;->a(Landroid/content/Intent;)Lxda;

    move-result-object p0

    new-instance v0, Lur1;

    invoke-direct {v0}, Lur1;-><init>()V

    new-instance v1, Lxoc;

    invoke-direct {v1, p1}, Lxoc;-><init>(Lcom/google/firebase/messaging/i$a;)V

    invoke-virtual {p0, v0, v1}, Lxda;->c(Ljava/util/concurrent/Executor;Lpe7;)Lxda;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Binding only allowed within app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
