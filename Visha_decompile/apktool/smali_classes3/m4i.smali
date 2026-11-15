.class public final Lm4i;
.super Lo3i;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfww;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo3i;-><init>(II)V

    iput-object p1, p0, Lm4i;->d:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm4i;->d:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
