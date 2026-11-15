.class final Lcom/google/android/libraries/places/internal/zzbjv;
.super Lcom/google/android/libraries/places/internal/zzbip;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbgf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbfg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbgf;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbju;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbip;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zzb:Lcom/google/android/libraries/places/internal/zzbfg;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbjv;)Lcom/google/android/libraries/places/internal/zzbfg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zzb:Lcom/google/android/libraries/places/internal/zzbfg;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbfu;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;[Lcom/google/android/libraries/places/internal/zzayx;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbjt;

    .line 8
    .line 9
    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjt;-><init>(Lcom/google/android/libraries/places/internal/zzbjv;Lcom/google/android/libraries/places/internal/zzbfr;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method protected final zzb()Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjv;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 2
    .line 3
    return-object v0
.end method
