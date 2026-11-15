.class public final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private static final LOGGER:Lcom/amazonaws/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    const-string v1, "WAITING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 10
    .line 11
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 12
    .line 13
    const-string v3, "IN_PROGRESS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 20
    .line 21
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 22
    .line 23
    const-string v5, "PAUSED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 30
    .line 31
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 32
    .line 33
    const-string v7, "RESUMED_WAITING"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 40
    .line 41
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 42
    .line 43
    const-string v9, "COMPLETED"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 50
    .line 51
    new-instance v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 52
    .line 53
    const-string v11, "CANCELED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 60
    .line 61
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 62
    .line 63
    const-string v13, "FAILED"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 70
    .line 71
    new-instance v13, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 72
    .line 73
    const-string v15, "WAITING_FOR_NETWORK"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 80
    .line 81
    new-instance v15, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 82
    .line 83
    const-string v14, "PART_COMPLETED"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 91
    .line 92
    new-instance v14, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 93
    .line 94
    const-string v12, "PENDING_CANCEL"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 102
    .line 103
    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 104
    .line 105
    const-string v10, "PENDING_PAUSE"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 113
    .line 114
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 115
    .line 116
    const-string v8, "PENDING_NETWORK_DISCONNECT"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 124
    .line 125
    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 126
    .line 127
    const-string v6, "UNKNOWN"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 135
    .line 136
    const/16 v6, 0xd

    .line 137
    .line 138
    new-array v6, v6, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 139
    .line 140
    aput-object v0, v6, v2

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    aput-object v1, v6, v0

    .line 144
    .line 145
    const/4 v0, 0x2

    .line 146
    aput-object v3, v6, v0

    .line 147
    .line 148
    const/4 v0, 0x3

    .line 149
    aput-object v5, v6, v0

    .line 150
    .line 151
    const/4 v0, 0x4

    .line 152
    aput-object v7, v6, v0

    .line 153
    .line 154
    const/4 v0, 0x5

    .line 155
    aput-object v9, v6, v0

    .line 156
    .line 157
    const/4 v0, 0x6

    .line 158
    aput-object v11, v6, v0

    .line 159
    .line 160
    const/4 v0, 0x7

    .line 161
    aput-object v13, v6, v0

    .line 162
    .line 163
    const/16 v0, 0x8

    .line 164
    .line 165
    aput-object v15, v6, v0

    .line 166
    .line 167
    const/16 v0, 0x9

    .line 168
    .line 169
    aput-object v14, v6, v0

    .line 170
    .line 171
    const/16 v0, 0xa

    .line 172
    .line 173
    aput-object v12, v6, v0

    .line 174
    .line 175
    const/16 v0, 0xb

    .line 176
    .line 177
    aput-object v10, v6, v0

    .line 178
    .line 179
    aput-object v8, v6, v4

    .line 180
    .line 181
    sput-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 182
    .line 183
    new-instance v0, Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    .line 189
    .line 190
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    array-length v1, v0

    .line 195
    :goto_0
    if-ge v2, v1, :cond_0

    .line 196
    .line 197
    aget-object v3, v0, v2

    .line 198
    .line 199
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const/4 v3, 0x1

    .line 209
    add-int/2addr v2, v3

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lcom/amazonaws/logging/Log;

    .line 218
    .line 219
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lcom/amazonaws/logging/Log;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Unknown state "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, " transfer will be have state set to UNKNOWN."

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {v0, p0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 44
    .line 45
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 8
    .line 9
    return-object v0
.end method
