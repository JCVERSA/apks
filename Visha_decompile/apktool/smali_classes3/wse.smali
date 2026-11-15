.class public final Lwse;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;JII)V
    .locals 7

    const-string v3, "HhF1qQiI84tIg0/eB8BMUmrCPWLiUf2p20tCo/SaLzI="

    const/16 v6, 0x19

    const-string v2, "L8i06sDgb6sVaB+ScHUGdHTAN8wr04xodnQKCwVbFMYOgH4Omnc18MPDEonWn/wv"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-wide p5, p0, Lwse;->i:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Ltte;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Ltte;->e:Looe;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v0, v1}, Looe;->r0(J)Looe;

    iget-wide v3, p0, Lwse;->i:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Looe;->N(J)Looe;

    invoke-virtual {v2, v3, v4}, Looe;->O(J)Looe;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
