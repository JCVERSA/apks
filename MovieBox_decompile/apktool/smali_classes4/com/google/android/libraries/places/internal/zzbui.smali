.class public final Lcom/google/android/libraries/places/internal/zzbui;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbug;Lcom/google/android/libraries/places/internal/zzbuh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/zzbug;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zza:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/zzbug;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzb:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbug;->zza()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzc:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbug;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method static zza(C)I
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-le p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 p0, p0, -0x30

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    :goto_0
    const/16 v0, 0x61

    .line 14
    .line 15
    if-lt p0, v0, :cond_3

    .line 16
    .line 17
    const/16 v0, 0x66

    .line 18
    .line 19
    if-le p0, v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    add-int/lit8 p0, p0, -0x57

    .line 23
    .line 24
    return p0

    .line 25
    :cond_3
    :goto_1
    const/16 v0, 0x41

    .line 26
    .line 27
    if-lt p0, v0, :cond_4

    .line 28
    .line 29
    const/16 v0, 0x46

    .line 30
    .line 31
    if-gt p0, v0, :cond_4

    .line 32
    .line 33
    add-int/lit8 p0, p0, -0x37

    .line 34
    .line 35
    return p0

    .line 36
    :cond_4
    const/4 p0, -0x1

    .line 37
    return p0
.end method

.method public static zzb(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x50

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "https"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/16 p0, 0x1bb

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, -0x1

    .line 24
    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbui;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzc:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbui;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
