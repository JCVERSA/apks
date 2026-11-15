.class final Lcom/google/android/libraries/places/internal/zzble;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbbk;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzaze;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzblg;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzblg;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzaze;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    .line 3
    .line 4
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eq v1, v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbma;->zzU(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbma;->zzg(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzble;->zza:Lcom/google/android/libraries/places/internal/zzbbk;

    .line 33
    .line 34
    new-array v4, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aput-object v1, v4, v5

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    aput-object v3, v4, v1

    .line 41
    .line 42
    const-string v1, "Entering {0} state with picker: {1}"

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzble;->zzc:Lcom/google/android/libraries/places/internal/zzblg;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzble;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzblg;->zzb:Lcom/google/android/libraries/places/internal/zzbma;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzt(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbgh;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbgh;->zza(Lcom/google/android/libraries/places/internal/zzaze;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method
