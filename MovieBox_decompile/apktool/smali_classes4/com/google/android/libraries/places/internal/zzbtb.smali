.class public final Lcom/google/android/libraries/places/internal/zzbtb;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbtb;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtb;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-nez v4, :cond_7

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    move v5, v2

    .line 16
    :goto_0
    const/16 v6, 0x7f

    .line 17
    .line 18
    const/16 v7, 0x1f

    .line 19
    .line 20
    if-ge v5, v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-le v8, v7, :cond_0

    .line 27
    .line 28
    if-ge v8, v6, :cond_0

    .line 29
    .line 30
    add-int/2addr v5, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v6, v0, v2

    .line 47
    .line 48
    aput-object v5, v0, v3

    .line 49
    .line 50
    aput-object p1, v0, v1

    .line 51
    .line 52
    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    .line 53
    .line 54
    invoke-static {v4, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    if-eqz p2, :cond_6

    .line 63
    .line 64
    move v4, v2

    .line 65
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-ge v4, v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-le v5, v7, :cond_2

    .line 76
    .line 77
    if-ge v5, v6, :cond_2

    .line 78
    .line 79
    add-int/2addr v4, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v5, v0, v2

    .line 96
    .line 97
    aput-object v4, v0, v3

    .line 98
    .line 99
    aput-object p2, v0, v1

    .line 100
    .line 101
    const-string p2, "Unexpected char %#04x at %d in header value: %s"

    .line 102
    .line 103
    invoke-static {v6, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ge v2, v0, :cond_5

    .line 118
    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    add-int/lit8 v2, v2, -0x2

    .line 144
    .line 145
    :cond_4
    add-int/2addr v2, v1

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtb;->zza:Ljava/util/List;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    return-object p0

    .line 162
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    const-string p2, "value == null"

    .line 165
    .line 166
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string p2, "name is empty"

    .line 173
    .line 174
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbtd;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbtd;-><init>(Lcom/google/android/libraries/places/internal/zzbtb;Lcom/google/android/libraries/places/internal/zzbtc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
