.class final Lcom/google/android/libraries/places/internal/zzbnp;
.super Lcom/google/android/libraries/places/internal/zzbbm;
.source "source.java"


# instance fields
.field private final zzf:Lcom/google/android/libraries/places/internal/zzbbd;

.field private zzg:Lcom/google/android/libraries/places/internal/zzbbj;

.field private zzh:Lcom/google/android/libraries/places/internal/zzaze;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbnp;)Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 15
    .line 16
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zzd()V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    .line 24
    .line 25
    if-ne v2, v1, :cond_5

    .line 26
    .line 27
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_0
    return-void

    .line 40
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_9

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-eq v1, v2, :cond_8

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq v1, v2, :cond_7

    .line 51
    .line 52
    const/4 p2, 0x3

    .line 53
    if-ne v1, p2, :cond_6

    .line 54
    .line 55
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbno;

    .line 56
    .line 57
    invoke-direct {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzbno;-><init>(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "Unsupported state:"

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_7
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbnm;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzazf;->zzd()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 88
    .line 89
    .line 90
    move-object p2, p1

    .line 91
    goto :goto_2

    .line 92
    :cond_8
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbnm;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_9
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbnm;

    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private final zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "NameResolver returned no usable address. addrs="

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", attrs="

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    instance-of v1, v1, Lcom/google/android/libraries/places/internal/zzbnl;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzd()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbnl;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbnl;->zza:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/Random;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 97
    .line 98
    .line 99
    move-object v0, p1

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzf:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbba;->zzb()Lcom/google/android/libraries/places/internal/zzbax;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbax;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbax;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbax;->zzc()Lcom/google/android/libraries/places/internal/zzbba;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbd;->zza(Lcom/google/android/libraries/places/internal/zzbba;)Lcom/google/android/libraries/places/internal/zzbbj;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnk;

    .line 122
    .line 123
    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbnk;-><init>(Lcom/google/android/libraries/places/internal/zzbnp;Lcom/google/android/libraries/places/internal/zzbbj;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzc(Lcom/google/android/libraries/places/internal/zzbbl;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 130
    .line 131
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    .line 132
    .line 133
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnm;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbbe;->zzd(Lcom/google/android/libraries/places/internal/zzbbj;Lcom/google/android/libraries/places/internal/zzayu;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzd(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 154
    .line 155
    return-object p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbnm;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v1, p1}, Lcom/google/android/libraries/places/internal/zzbnm;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbnp;->zzi(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zza()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnp;->zzg:Lcom/google/android/libraries/places/internal/zzbbj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbj;->zzb()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
