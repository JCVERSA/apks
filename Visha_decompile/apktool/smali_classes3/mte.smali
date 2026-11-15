.class public final Lmte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "VAZB0ZL6jYmE0jUHUJ0Om2CbCtDd1BstFFxYH2/l7vw="

    const/16 v6, 0x3d

    const-string v2, "l73pWBOU/qyDPWyApDuwt3A6opU9E+7PquXzxCByw4gixPmt031v7ukW//Ddd+VY"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e0;->q()Z

    move-result p1

    iput-boolean p1, p0, Lmte;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lmte;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Looe;->x(J)Looe;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
