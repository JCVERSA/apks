.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "ST_TYPE_UNKNOWN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 11
    .line 12
    new-instance v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 13
    .line 14
    const-string v2, "ST_TYPE_VIDEO"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 21
    .line 22
    new-instance v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 23
    .line 24
    const-string v5, "ST_TYPE_AUDIO"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v2, v5, v6, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 31
    .line 32
    new-instance v5, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 33
    .line 34
    const-string v7, "ST_TYPE_SUB"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v6}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    new-array v7, v7, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 44
    .line 45
    aput-object v0, v7, v3

    .line 46
    .line 47
    aput-object v1, v7, v4

    .line 48
    .line 49
    aput-object v2, v7, v6

    .line 50
    .line 51
    aput-object v5, v7, v8

    .line 52
    .line 53
    sput-object v7, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1

    .line 1
    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->mValue:I

    .line 2
    .line 3
    return v0
.end method
