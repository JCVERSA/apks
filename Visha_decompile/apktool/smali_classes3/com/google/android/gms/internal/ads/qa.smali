.class public final Lcom/google/android/gms/internal/ads/qa;
.super Lpui;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpui;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-static {}, Lqui;->c()Lqui;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lqui;->f()Lqui;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    :cond_0
    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lqui;->f()Lqui;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqui;

    invoke-virtual {p1}, Lqui;->h()V

    return-object p1
.end method

.method public final bridge synthetic d(Ljava/lang/Object;II)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lqui;

    or-int/lit8 p0, p0, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lqui;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lqui;

    or-int/lit8 p0, p0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lqui;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic f(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lqui;

    or-int/lit8 p0, p0, 0x3

    check-cast p3, Lqui;

    invoke-virtual {p1, p0, p3}, Lqui;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic g(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lqui;

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p3}, Lqui;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic h(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lqui;

    shl-int/lit8 p0, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lqui;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    invoke-virtual {p0}, Lqui;->h()V

    return-void
.end method

.method public final synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lqui;

    check-cast p1, Lcom/google/android/gms/internal/ads/ia;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/ia;->zzt:Lqui;

    return-void
.end method
