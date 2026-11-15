.class public final Laxh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfww;

.field public final b:Ltrh;

.field public final c:Lith;

.field public final d:Lewh;


# direct methods
.method public constructor <init>(Lrph;Ljava/util/List;Ltrh;Lith;Lewh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Laxh;->a:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object p3, p0, Laxh;->b:Ltrh;

    iput-object p4, p0, Laxh;->c:Lith;

    iput-object p5, p0, Laxh;->d:Lewh;

    return-void
.end method
