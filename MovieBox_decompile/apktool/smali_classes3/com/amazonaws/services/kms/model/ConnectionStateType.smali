.class public final enum Lcom/amazonaws/services/kms/model/ConnectionStateType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/ConnectionStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum CONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum CONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum DISCONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum DISCONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum FAILED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/ConnectionStateType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CONNECTED"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->CONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 10
    .line 11
    new-instance v3, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "CONNECTING"

    .line 15
    .line 16
    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v3, Lcom/amazonaws/services/kms/model/ConnectionStateType;->CONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 20
    .line 21
    new-instance v6, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    const-string v8, "FAILED"

    .line 25
    .line 26
    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v6, Lcom/amazonaws/services/kms/model/ConnectionStateType;->FAILED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 30
    .line 31
    new-instance v9, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 32
    .line 33
    const/4 v10, 0x3

    .line 34
    const-string v11, "DISCONNECTED"

    .line 35
    .line 36
    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v9, Lcom/amazonaws/services/kms/model/ConnectionStateType;->DISCONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 40
    .line 41
    new-instance v12, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 42
    .line 43
    const/4 v13, 0x4

    .line 44
    const-string v14, "DISCONNECTING"

    .line 45
    .line 46
    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v12, Lcom/amazonaws/services/kms/model/ConnectionStateType;->DISCONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 50
    .line 51
    const/4 v15, 0x5

    .line 52
    new-array v15, v15, [Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 53
    .line 54
    aput-object v0, v15, v1

    .line 55
    .line 56
    aput-object v3, v15, v4

    .line 57
    .line 58
    aput-object v6, v15, v7

    .line 59
    .line 60
    aput-object v9, v15, v10

    .line 61
    .line 62
    aput-object v12, v15, v13

    .line 63
    .line 64
    sput-object v15, Lcom/amazonaws/services/kms/model/ConnectionStateType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 65
    .line 66
    new-instance v1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v1, Lcom/amazonaws/services/kms/model/ConnectionStateType;->enumMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
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
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionStateType;
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
    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->enumMap:Ljava/util/Map;

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
    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionStateType;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/ConnectionStateType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/ConnectionStateType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/kms/model/ConnectionStateType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
