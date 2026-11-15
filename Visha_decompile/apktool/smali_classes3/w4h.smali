.class public final Lw4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5h;


# instance fields
.field public final synthetic a:Lx4h;


# direct methods
.method public constructor <init>(Lx4h;)V
    .locals 0

    iput-object p1, p0, Lw4h;->a:Lx4h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lw4h;->a:Lx4h;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lbuf;

    iget-object p0, p0, Lw4h;->a:Lx4h;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v0

    invoke-static {p0, v0}, Lx4h;->c(Lx4h;Lcom/google/android/gms/ads/internal/client/zzdx;)V

    invoke-virtual {p1}, Lbuf;->b()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
