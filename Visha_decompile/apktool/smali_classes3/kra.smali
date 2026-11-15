.class public final synthetic Lkra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic d:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic e:Lzn6;

.field public final synthetic f:Lwi4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lzn6;Lwi4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkra;->b:Landroid/content/Context;

    iput-object p2, p0, Lkra;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lkra;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lkra;->e:Lzn6;

    iput-object p5, p0, Lkra;->f:Lwi4;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkra;->b:Landroid/content/Context;

    iget-object v1, p0, Lkra;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lkra;->d:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v3, p0, Lkra;->e:Lzn6;

    iget-object p0, p0, Lkra;->f:Lwi4;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lzn6;Lwi4;)Lcom/google/firebase/messaging/g;

    move-result-object p0

    return-object p0
.end method
