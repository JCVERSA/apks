.class public final enum Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "RSASSA_PSS_SHA_256"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 10
    .line 11
    new-instance v3, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "RSASSA_PSS_SHA_384"

    .line 15
    .line 16
    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v3, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 20
    .line 21
    new-instance v6, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    const-string v8, "RSASSA_PSS_SHA_512"

    .line 25
    .line 26
    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v6, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 30
    .line 31
    new-instance v9, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 32
    .line 33
    const/4 v10, 0x3

    .line 34
    const-string v11, "RSASSA_PKCS1_V1_5_SHA_256"

    .line 35
    .line 36
    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v9, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 40
    .line 41
    new-instance v12, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 42
    .line 43
    const/4 v13, 0x4

    .line 44
    const-string v14, "RSASSA_PKCS1_V1_5_SHA_384"

    .line 45
    .line 46
    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v12, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 50
    .line 51
    new-instance v15, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 52
    .line 53
    const/4 v13, 0x5

    .line 54
    const-string v10, "RSASSA_PKCS1_V1_5_SHA_512"

    .line 55
    .line 56
    invoke-direct {v15, v10, v13, v10}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v15, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 60
    .line 61
    new-instance v13, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 62
    .line 63
    const/4 v7, 0x6

    .line 64
    const-string v4, "ECDSA_SHA_256"

    .line 65
    .line 66
    invoke-direct {v13, v4, v7, v4}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v13, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 70
    .line 71
    new-instance v7, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    move-object/from16 v21, v4

    .line 75
    .line 76
    const-string v4, "ECDSA_SHA_384"

    .line 77
    .line 78
    invoke-direct {v7, v4, v1, v4}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 82
    .line 83
    new-instance v1, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 84
    .line 85
    move-object/from16 v22, v4

    .line 86
    .line 87
    const/16 v4, 0x8

    .line 88
    .line 89
    move-object/from16 v23, v10

    .line 90
    .line 91
    const-string v10, "ECDSA_SHA_512"

    .line 92
    .line 93
    invoke-direct {v1, v10, v4, v10}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v1, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 97
    .line 98
    const/16 v4, 0x9

    .line 99
    .line 100
    new-array v4, v4, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 101
    .line 102
    const/16 v20, 0x0

    .line 103
    .line 104
    aput-object v0, v4, v20

    .line 105
    .line 106
    const/16 v19, 0x1

    .line 107
    .line 108
    aput-object v3, v4, v19

    .line 109
    .line 110
    const/16 v18, 0x2

    .line 111
    .line 112
    aput-object v6, v4, v18

    .line 113
    .line 114
    const/16 v17, 0x3

    .line 115
    .line 116
    aput-object v9, v4, v17

    .line 117
    .line 118
    const/16 v16, 0x4

    .line 119
    .line 120
    aput-object v12, v4, v16

    .line 121
    .line 122
    const/16 v16, 0x5

    .line 123
    .line 124
    aput-object v15, v4, v16

    .line 125
    .line 126
    const/16 v16, 0x6

    .line 127
    .line 128
    aput-object v13, v4, v16

    .line 129
    .line 130
    const/16 v16, 0x7

    .line 131
    .line 132
    aput-object v7, v4, v16

    .line 133
    .line 134
    const/16 v16, 0x8

    .line 135
    .line 136
    aput-object v1, v4, v16

    .line 137
    .line 138
    sput-object v4, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 139
    .line 140
    new-instance v4, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    sput-object v4, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->enumMap:Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-interface {v4, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-interface {v4, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-object/from16 v0, v23

    .line 163
    .line 164
    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-object/from16 v0, v21

    .line 168
    .line 169
    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-object/from16 v0, v22

    .line 173
    .line 174
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->enumMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Cannot create enum from "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " value!"

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v0, "Value cannot be null or empty!"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
