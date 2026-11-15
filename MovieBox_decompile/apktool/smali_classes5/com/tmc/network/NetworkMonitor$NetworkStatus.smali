.class public final enum Lcom/tmc/network/NetworkMonitor$NetworkStatus;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmc/network/NetworkMonitor$NetworkStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/tmc/network/NetworkMonitor$NetworkStatus;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "NONE",
        "G2",
        "G3",
        "G4",
        "WIFI",
        "G5",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

.field public static final enum WIFI:Lcom/tmc/network/NetworkMonitor$NetworkStatus;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 3
    .line 4
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->WIFI:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "unknown"

    .line 5
    .line 6
    const-string v3, "NONE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->NONE:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 12
    .line 13
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 14
    .line 15
    const-string v1, "G2"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v1, v2, v1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G2:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 22
    .line 23
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 24
    .line 25
    const-string v1, "G3"

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v0, v1, v2, v1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G3:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 32
    .line 33
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 34
    .line 35
    const-string v1, "G4"

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v0, v1, v2, v1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G4:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 42
    .line 43
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 44
    .line 45
    const-string v1, "WIFI"

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-direct {v0, v1, v2, v1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->WIFI:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 52
    .line 53
    new-instance v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 54
    .line 55
    const-string v1, "G5"

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v0, v1, v2, v1}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->G5:Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 62
    .line 63
    invoke-static {}, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->$values()[Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->$VALUES:[Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 68
    .line 69
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
    iput-object p3, p0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->type:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tmc/network/NetworkMonitor$NetworkStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->$VALUES:[Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tmc/network/NetworkMonitor$NetworkStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/NetworkMonitor$NetworkStatus;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
