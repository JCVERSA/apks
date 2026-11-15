.class public final Lcom/google/android/libraries/places/internal/zziu;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzev;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzki;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzfa;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzfg;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzjr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzhv;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzhz;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzid;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzih;

.field private final zzj:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzki;Lcom/google/android/libraries/places/internal/zzfa;Lcom/google/android/libraries/places/internal/zzfg;Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/internal/zzhv;Lcom/google/android/libraries/places/internal/zzhz;Lcom/google/android/libraries/places/internal/zzid;Lcom/google/android/libraries/places/internal/zzih;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zziu;->zzc:Lcom/google/android/libraries/places/internal/zzfg;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zziu;->zzf:Lcom/google/android/libraries/places/internal/zzhv;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zziu;->zzg:Lcom/google/android/libraries/places/internal/zzhz;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/libraries/places/internal/zziu;->zzh:Lcom/google/android/libraries/places/internal/zzid;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/libraries/places/internal/zziu;->zzi:Lcom/google/android/libraries/places/internal/zzih;

    .line 23
    .line 24
    return-void
.end method

.method static final synthetic zzi(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/libraries/places/internal/zzhy;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhy;->status:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjb;->zza(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhy;->result:Lcom/google/android/libraries/places/internal/zzja;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhy;->htmlAttributions:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-static {v0, p0}, Lcom/google/android/libraries/places/internal/zzix;->zzg(Lcom/google/android/libraries/places/internal/zzja;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->newInstance(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzhy;->status:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhy;->errorMessage:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, p0}, Lcom/google/android/libraries/places/internal/zzjb;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method static final synthetic zzj(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/libraries/places/internal/zzig;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzig;->status:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzjb;->zza(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzig;->predictions:[Lcom/google/android/libraries/places/internal/zziz;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, v1

    .line 30
    if-ge v2, v3, :cond_3

    .line 31
    .line 32
    aget-object v3, v1, v2

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zza()Lcom/google/android/libraries/places/internal/zzja;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zzb()Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zziz;->zza()Lcom/google/android/libraries/places/internal/zzja;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzig;->htmlAttributions:[Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zznx;->zzk([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznx;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const/4 v5, 0x0

    .line 62
    :goto_1
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/zzix;->zzg(Lcom/google/android/libraries/places/internal/zzja;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->newInstance(Lcom/google/android/libraries/places/api/model/Place;D)Lcom/google/android/libraries/places/api/model/PlaceLikelihood;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    .line 81
    .line 82
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 83
    .line 84
    const-string v1, "Unexpected server error: PlaceLikelihood returned without a likelihood value"

    .line 85
    .line 86
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    .line 94
    .line 95
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 96
    .line 97
    const-string v1, "Unexpected server error: PlaceLikelihood returned without a Place value"

    .line 98
    .line 99
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_4
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    .line 112
    .line 113
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzig;->status:Ljava/lang/String;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzig;->errorMessage:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v3, p0}, Lcom/google/android/libraries/places/internal/zzjb;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 127
    .line 128
    .line 129
    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v3, 0x2334

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 19
    .line 20
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 21
    .line 22
    const-string v0, "Must include max width or max height in request."

    .line 23
    .line 24
    invoke-direct {p2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 45
    .line 46
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 47
    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v1, v0, p2

    .line 51
    .line 52
    const-string p2, "Max Width must not be < 1, but was: %d."

    .line 53
    .line 54
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-gtz v1, :cond_4

    .line 76
    .line 77
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 80
    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v2, v0, p2

    .line 84
    .line 85
    const-string p2, "Max Height must not be < 1, but was: %d."

    .line 86
    .line 87
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {v1, v3, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    .line 103
    .line 104
    new-instance v2, Lcom/google/android/libraries/places/internal/zzhr;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    .line 114
    .line 115
    invoke-direct {v2, p1, v3, p2, v1}, Lcom/google/android/libraries/places/internal/zzhr;-><init>(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zzc:Lcom/google/android/libraries/places/internal/zzfg;

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    new-instance p1, Lcom/google/android/libraries/places/internal/zzhs;

    .line 127
    .line 128
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzhs;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v2, p1}, Lcom/google/android/libraries/places/internal/zzfg;->zzb(Lcom/google/android/libraries/places/internal/zzfi;Lcom/google/android/libraries/places/internal/zzhs;)Lcom/google/android/gms/tasks/Task;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p2, Lcom/google/android/libraries/places/internal/zzim;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzim;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Lcom/google/android/libraries/places/internal/zzin;

    .line 145
    .line 146
    invoke-direct {p2, p0, v3, v4, v0}, Lcom/google/android/libraries/places/internal/zzin;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x2334

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 14
    .line 15
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 16
    .line 17
    const-string v0, "Place ID must not be empty."

    .line 18
    .line 19
    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 41
    .line 42
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 43
    .line 44
    const-string v0, "Place Fields must not be empty."

    .line 45
    .line 46
    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    .line 58
    .line 59
    new-instance v7, Lcom/google/android/libraries/places/internal/zzhx;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    .line 74
    .line 75
    move-object v1, v7

    .line 76
    move-object v2, p1

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzhx;-><init>(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    const-class p1, Lcom/google/android/libraries/places/internal/zzhy;

    .line 89
    .line 90
    invoke-virtual {v0, v7, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Lcom/google/android/libraries/places/internal/zzis;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzis;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance v0, Lcom/google/android/libraries/places/internal/zzit;

    .line 104
    .line 105
    invoke-direct {v0, p0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzit;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    .line 19
    .line 20
    new-instance v7, Lcom/google/android/libraries/places/internal/zzib;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    .line 35
    .line 36
    move-object v1, v7

    .line 37
    move-object v2, p1

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzib;-><init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    const-class p1, Lcom/google/android/libraries/places/internal/zzic;

    .line 50
    .line 51
    invoke-virtual {v0, v7, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/google/android/libraries/places/internal/zzio;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzio;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Lcom/google/android/libraries/places/internal/zzip;

    .line 65
    .line 66
    invoke-direct {v0, p0, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzip;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zznx;->zzl()Lcom/google/android/libraries/places/internal/zznx;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;I)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 14
    .line 15
    const/16 p3, 0x2334

    .line 16
    .line 17
    const-string p4, "Place Fields must not be empty."

    .line 18
    .line 19
    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zziu;->zzj:Lcom/google/android/libraries/places/internal/zzjs;

    .line 31
    .line 32
    new-instance v8, Lcom/google/android/libraries/places/internal/zzif;

    .line 33
    .line 34
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzjs;->zzf()Z

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zziu;->zza:Lcom/google/android/libraries/places/internal/zzki;

    .line 47
    .line 48
    move-object v0, v8

    .line 49
    move-object v1, p1

    .line 50
    move-object v2, p2

    .line 51
    move-object v3, p3

    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzif;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzki;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zziu;->zzb:Lcom/google/android/libraries/places/internal/zzfa;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 60
    .line 61
    .line 62
    move-result-wide p3

    .line 63
    const-class p1, Lcom/google/android/libraries/places/internal/zzig;

    .line 64
    .line 65
    invoke-virtual {p2, v8, p1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzfi;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/google/android/libraries/places/internal/zziq;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zziq;-><init>(Lcom/google/android/libraries/places/internal/zziu;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Lcom/google/android/libraries/places/internal/zzir;

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-direct {p2, p0, p3, p4, v0}, Lcom/google/android/libraries/places/internal/zzir;-><init>(Lcom/google/android/libraries/places/internal/zziu;JI)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method final synthetic zze(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    move-object v1, p4

    .line 11
    move-wide v2, p1

    .line 12
    invoke-interface/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzjr;->zzb(Lcom/google/android/gms/tasks/Task;JJI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    .line 20
    .line 21
    return-object p1
.end method

.method final synthetic zzf(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 8
    .line 9
    const/4 v7, 0x2

    .line 10
    move-object v2, p4

    .line 11
    move-wide v3, p1

    .line 12
    move v8, p3

    .line 13
    invoke-interface/range {v1 .. v8}, Lcom/google/android/libraries/places/internal/zzjr;->zzl(Lcom/google/android/gms/tasks/Task;JJII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzg(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 8
    .line 9
    const/4 v7, 0x2

    .line 10
    move-object v2, p4

    .line 11
    move-wide v3, p1

    .line 12
    move v8, p3

    .line 13
    invoke-interface/range {v1 .. v8}, Lcom/google/android/libraries/places/internal/zzjr;->zzn(Lcom/google/android/gms/tasks/Task;JJII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzh(JILcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zziu;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziu;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    move-object v1, p4

    .line 11
    move-wide v2, p1

    .line 12
    invoke-interface/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzjr;->zzf(Lcom/google/android/gms/tasks/Task;JJI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 20
    .line 21
    return-object p1
.end method
