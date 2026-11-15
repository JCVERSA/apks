.class final Lcom/google/android/libraries/places/internal/zzbjo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzb()Ljava/net/SocketAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbjx;->zze(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zza:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzt(Lcom/google/android/libraries/places/internal/zzbkd;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaze;->zza:Lcom/google/android/libraries/places/internal/zzaze;

    .line 55
    .line 56
    if-ne v1, v4, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    move-object v1, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzh(Ljava/net/SocketAddress;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzb(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzazf;->zza()Lcom/google/android/libraries/places/internal/zzaze;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-ne v0, v2, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzm(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzs(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 104
    .line 105
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 106
    .line 107
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbkd;->zzA(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzaze;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzi(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbgf;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 118
    .line 119
    const-string v2, "InternalSubchannel closed pending transport due to address change"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 129
    .line 130
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzu(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzl(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbjx;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbjx;->zzd()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzE(Lcom/google/android/libraries/places/internal/zzbkd;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_2
    if-eqz v1, :cond_4

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzn(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbml;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 163
    .line 164
    const-string v4, "InternalSubchannel closed transport early due to address change"

    .line 165
    .line 166
    invoke-virtual {v2, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v0, v2}, Lcom/google/android/libraries/places/internal/zzbml;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzf(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdv;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdv;->zza()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 183
    .line 184
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 188
    .line 189
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 193
    .line 194
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzx(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbml;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbjo;->zzb:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjn;

    .line 204
    .line 205
    invoke-direct {v2, p0}, Lcom/google/android/libraries/places/internal/zzbjn;-><init>(Lcom/google/android/libraries/places/internal/zzbjo;)V

    .line 206
    .line 207
    .line 208
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzr(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-wide/16 v3, 0x5

    .line 215
    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbdw;->zza(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/libraries/places/internal/zzbdv;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzw(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdv;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    return-void
.end method
