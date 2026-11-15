.class public abstract enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field public static final enum ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ANY"
    .end annotation
.end field

.field private static final LOGGER:Lcom/amazonaws/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOBILE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MOBILE"
    .end annotation
.end field

.field public static final enum WIFI:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WIFI"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;

    .line 2
    .line 3
    const-string v1, "ANY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 10
    .line 11
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;

    .line 12
    .line 13
    const-string v3, "WIFI"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->WIFI:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 20
    .line 21
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;

    .line 22
    .line 23
    const-string v5, "MOBILE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MOBILE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    array-length v1, v0

    .line 54
    :goto_0
    if-ge v2, v1, :cond_0

    .line 55
    .line 56
    aget-object v3, v0, v2

    .line 57
    .line 58
    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    add-int/2addr v2, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->LOGGER:Lcom/amazonaws/logging/Log;

    .line 76
    .line 77
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

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getConnectionType(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

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
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->LOGGER:Lcom/amazonaws/logging/Log;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Unknown connection type "

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
    const-string p0, " transfer will have connection type set to ANY."

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
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 44
    .line 45
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method isConnected(Landroid/net/ConnectivityManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->verify(Landroid/net/NetworkInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method protected abstract verify(Landroid/net/NetworkInfo;)Z
.end method
