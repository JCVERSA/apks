.class public final Lyse;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Lhse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILhse;)V
    .locals 7

    const-string v3, "7HL5eN/Pvda4VOei0IPDYI1tAwkOrIcQx+u+McMv8ws="

    const/16 v6, 0x55

    const-string v2, "4sDibVZK9eKuFlqXgTpdhhKs2Orw9dH1PELY4zPrs10iomnIsvpd54Iu4NVAy+DZ"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-object p7, p0, Lyse;->i:Lhse;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lyse;->i:Lhse;

    invoke-virtual {v1}, Lhse;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, Lhse;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lhse;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lhse;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    aget-wide v1, v0, v1

    invoke-virtual {p0, v1, v2}, Looe;->t0(J)Looe;

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-virtual {p0, v0, v1}, Looe;->s0(J)Looe;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
