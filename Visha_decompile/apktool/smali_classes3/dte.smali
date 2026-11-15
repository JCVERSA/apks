.class public final Ldte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Lmre;

.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILmre;JJ)V
    .locals 8

    move-object v7, p0

    const-string v3, "ZTQGRqHvDNY9rQHlORv5dNEX7nDBWGl9u8ebCYk6vGo="

    const/16 v6, 0xb

    const-string v2, "WMtAvLUkeJPp5Xeb/kz/NfyzhUYTjmhsar/mdaqDTMDV2KhiERSKZGYNWUWCDAMN"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    move-object v0, p7

    iput-object v0, v7, Ldte;->i:Lmre;

    move-wide/from16 v0, p8

    iput-wide v0, v7, Ldte;->j:J

    move-wide/from16 v0, p10

    iput-wide v0, v7, Ldte;->k:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Ldte;->i:Lmre;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lmre;->b()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-wide v2, p0, Ldte;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Ldte;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lkre;

    invoke-direct {v1, v0}, Lkre;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lkre;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Looe;->x0(J)Looe;

    iget-object v0, v1, Lkre;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, v1, Lkre;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Looe;->K(J)Looe;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, v1, Lkre;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-object v0, v1, Lkre;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Looe;->f0(J)Looe;

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
