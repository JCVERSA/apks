.class public final Lfxg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpuh;

.field public final b:Lruh;


# direct methods
.method public constructor <init>(Lpuh;Lruh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxg;->a:Lpuh;

    iput-object p2, p0, Lfxg;->b:Lruh;

    return-void
.end method


# virtual methods
.method public final a()Lpuh;
    .locals 0

    iget-object p0, p0, Lfxg;->a:Lpuh;

    return-object p0
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lfxg;->b:Lruh;

    invoke-virtual {p0}, Lruh;->d()Lcom/google/android/gms/internal/ads/zzfjy;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfjy;->zza:Lcom/google/android/gms/internal/ads/zzfjy;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
