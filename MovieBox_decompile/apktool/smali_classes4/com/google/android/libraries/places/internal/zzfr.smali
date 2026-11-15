.class public final synthetic Lcom/google/android/libraries/places/internal/zzfr;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    instance-of p1, v0, Lcom/google/android/gms/common/api/ApiException;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of p1, v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eqz p1, :cond_7

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zze(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdj;->zza:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v0, v2, :cond_6

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    if-eq v0, v2, :cond_5

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    const/16 v3, 0xe

    .line 52
    .line 53
    if-eq v0, v3, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 56
    .line 57
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 72
    .line 73
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 87
    .line 88
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 89
    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 104
    .line 105
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 106
    .line 107
    const/16 v2, 0x2333

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 121
    .line 122
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 123
    .line 124
    const/16 v2, 0x2335

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 138
    .line 139
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 140
    .line 141
    const/16 v2, 0xf

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 155
    .line 156
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 157
    .line 158
    const/16 v2, 0x2334

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 172
    .line 173
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 183
    .line 184
    .line 185
    move-object v0, p1

    .line 186
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    :cond_8
    return-object p1
.end method
