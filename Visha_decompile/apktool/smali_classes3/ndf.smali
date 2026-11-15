.class public final Lndf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lndf;->b:Landroid/content/Context;

    iput-object p2, p0, Lndf;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lndf;->e:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lndf;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lndf;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Z)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object v0

    iget-object v1, p0, Lndf;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lrdf;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lndf;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lndf;->e:Z

    if-ne v2, p1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lndf;->e:Z

    iget-object p1, p0, Lndf;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-boolean p0, p0, Lndf;->e:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lrdf;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lrdf;->g(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzdn(Lhue;)V
    .locals 0

    iget-boolean p1, p1, Lhue;->j:Z

    invoke-virtual {p0, p1}, Lndf;->b(Z)V

    return-void
.end method
