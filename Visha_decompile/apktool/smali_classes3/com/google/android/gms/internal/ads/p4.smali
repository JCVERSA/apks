.class public final Lcom/google/android/gms/internal/ads/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2g;
.implements Lb1g;
.implements Lnzf;
.implements Ld0g;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lu5g;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/o0;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/o0;Lakh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    if-eqz p2, :cond_0

    const/16 p0, 0x44d

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x69

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/16 p1, 0x454

    goto :goto_0

    :cond_0
    const/16 p1, 0x453

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onAdClicked()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p4;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final t(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 1

    new-instance v0, Ldlg;

    invoke-direct {v0, p1}, Ldlg;-><init>(Lcom/google/android/gms/internal/ads/g2;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    const/16 p1, 0x44e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 1

    new-instance v0, Lflg;

    invoke-direct {v0, p1}, Lflg;-><init>(Lcom/google/android/gms/internal/ads/g2;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    const/16 p1, 0x44f

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 1

    new-instance v0, Lclg;

    invoke-direct {v0, p1}, Lclg;-><init>(Lvmh;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 1

    new-instance v0, Lelg;

    invoke-direct {v0, p1}, Lelg;-><init>(Lcom/google/android/gms/internal/ads/g2;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    const/16 p1, 0x450

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final zzh()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/16 v0, 0x455

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final zzn(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/16 p1, 0x452

    goto :goto_0

    :cond_0
    const/16 p1, 0x451

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method

.method public final declared-synchronized zzs()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzt()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p4;->b:Lcom/google/android/gms/internal/ads/o0;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    return-void
.end method
