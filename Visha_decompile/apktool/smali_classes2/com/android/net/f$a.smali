.class final Lcom/android/net/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/net/f;

.field private final b:Lcom/android/net/n;

.field private final c:Lcom/android/net/p;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/net/f;Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/f$a;->a:Lcom/android/net/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    iput-object p3, p0, Lcom/android/net/f$a;->c:Lcom/android/net/p;

    iput-object p4, p0, Lcom/android/net/f$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    invoke-virtual {v0}, Lcom/android/net/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    const-string v0, "canceled-at-delivery"

    invoke-virtual {p0, v0}, Lcom/android/net/n;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/net/f$a;->c:Lcom/android/net/p;

    iget-object v1, v0, Lcom/android/net/p;->c:Lcom/android/net/u;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    iget-object v0, v0, Lcom/android/net/p;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/android/net/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    iget-object v2, v0, Lcom/android/net/n;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/net/n;->e:Lcom/android/net/p$a;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/net/p$a;->a(Lcom/android/net/u;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/net/f$a;->c:Lcom/android/net/p;

    iget-boolean v0, v0, Lcom/android/net/p;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/net/f$a;->b:Lcom/android/net/n;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/net/n;->b(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/net/f$a;->d:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
