.class public final Lpte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Lcom/google/android/gms/internal/ads/f0;

.field public j:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILcom/google/android/gms/internal/ads/f0;)V
    .locals 7

    const-string v3, "ndx9dZsZ7ieWidA9GZ0gFhILFKdyE8GGkCplaI9mVx4="

    const/16 v6, 0x35

    const-string v2, "qIGT98ofDONSt/ESILoFz6FgHDBS/gwI/iVoXkVW/e+gYU6fjAWtMRBwwAhwGXlz"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-object p7, p0, Lpte;->i:Lcom/google/android/gms/internal/ads/f0;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/f0;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lpte;->j:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lpte;->i:Lcom/google/android/gms/internal/ads/f0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltte;->e:Looe;

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-wide v2, p0, Lpte;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Looe;->J(J)Looe;

    :cond_0
    return-void
.end method
