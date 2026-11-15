.class final Lcom/google/android/libraries/places/internal/zzbjz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbkb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkb;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zze:Lcom/google/android/libraries/places/internal/zzaze;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 53
    .line 54
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 69
    .line 70
    if-ne v3, v0, :cond_4

    .line 71
    .line 72
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v3, "Expected state is CONNECTING, actual state is %s"

    .line 100
    .line 101
    invoke-static {v0, v3, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzc()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzg()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 132
    .line 133
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzD(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjz;->zzb:Lcom/google/android/libraries/places/internal/zzbkb;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_1
    return-void
.end method
