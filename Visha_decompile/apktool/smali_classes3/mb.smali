.class public Lmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# static fields
.field public static volatile c:Llb;


# instance fields
.field public final a:Lwe;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lwe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lmb;->a:Lwe;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lmb;->b:Ljava/util/Map;

    return-void
.end method

.method public static c(Lzv3;Landroid/content/Context;Le2a;)Llb;
    .locals 5

    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmb;->c:Llb;

    if-nez v0, :cond_2

    const-class v0, Lmb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmb;->c:Llb;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Lzv3;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Las1;

    sget-object v3, Ln5e;->b:Ln5e;

    sget-object v4, Luve;->a:Luve;

    invoke-interface {p2, v2, v3, v4}, Le2a;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lwd3;)V

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0}, Lzv3;->s()Z

    move-result p0

    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lmb;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2, v1}, Lcom/google/android/gms/internal/measurement/b;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->x()Lwe;

    move-result-object p1

    invoke-direct {p0, p1}, Lmb;-><init>(Lwe;)V

    sput-object p0, Lmb;->c:Llb;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lmb;->c:Llb;

    return-object p0
.end method

.method public static synthetic d(Lsd3;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p1}, Lcgf;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2, p3}, Lcgf;->c(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1, p2, p3}, Lcgf;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2, p3}, Lcgf;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lmb;->a:Lwe;

    invoke-virtual {p0, p1, p2, p3}, Lwe;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lcgf;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcgf;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lmb;->a:Lwe;

    invoke-virtual {p0, p1, p2, p3}, Lwe;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
