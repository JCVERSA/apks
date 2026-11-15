.class final Lcom/google/android/libraries/places/internal/zzbtk;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final zza:Ljava/util/List;

.field private zzb:Z

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbtk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbtk;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzb:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbto;->zza:[Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    const-string v1, "supports"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-eq v1, v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    :goto_0
    const-string v1, "unsupported"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    if-eq v1, v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzb:Z

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_4
    :goto_1
    const-string v1, "protocols"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    array-length v1, p3

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_6
    :goto_2
    const-string v1, "selectProtocol"

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v4, 0x0

    .line 69
    if-nez v1, :cond_7

    .line 70
    .line 71
    const-string v1, "select"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_a

    .line 78
    .line 79
    :cond_7
    const-class v1, Ljava/lang/String;

    .line 80
    .line 81
    if-ne v0, v1, :cond_a

    .line 82
    .line 83
    array-length v0, p3

    .line 84
    if-ne v0, v3, :cond_a

    .line 85
    .line 86
    aget-object v0, p3, v4

    .line 87
    .line 88
    instance-of v1, v0, Ljava/util/List;

    .line 89
    .line 90
    if-eqz v1, :cond_a

    .line 91
    .line 92
    check-cast v0, Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    move p2, v4

    .line 99
    :goto_3
    if-ge p2, p1, :cond_9

    .line 100
    .line 101
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_8

    .line 112
    .line 113
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_9
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zza:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/String;

    .line 132
    .line 133
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_a
    const-string v0, "protocolSelected"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_b

    .line 143
    .line 144
    const-string v0, "selected"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_c

    .line 151
    .line 152
    :cond_b
    array-length p1, p3

    .line 153
    if-ne p1, v3, :cond_c

    .line 154
    .line 155
    aget-object p1, p3, v4

    .line 156
    .line 157
    check-cast p1, Ljava/lang/String;

    .line 158
    .line 159
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtk;->zzc:Ljava/lang/String;

    .line 160
    .line 161
    return-object v2

    .line 162
    :cond_c
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1
.end method
