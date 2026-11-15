.class public final enum Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

.field public static final enum SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;


# instance fields
.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 2
    .line 3
    const-string v1, "SCAN_DELETE_USED_APP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_USED_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 13
    .line 14
    const-string v1, "SCAN_DELETE_OFFLINEDOWNLOAD_APP"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_DELETE_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 21
    .line 22
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 23
    .line 24
    const-string v1, "SCAN_BRIDGEAPI"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_BRIDGEAPI:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 31
    .line 32
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 33
    .line 34
    const-string v1, "SCAN_PINFORLATER"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 41
    .line 42
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 43
    .line 44
    const-string v1, "SCAN_OPEN_APP"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OPEN_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 51
    .line 52
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 53
    .line 54
    const-string v1, "SCAN_OFFLINEDOWNLOAD_APP"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_OFFLINEDOWNLOAD_APP:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 61
    .line 62
    invoke-static {}, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 67
    .line 68
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
    iput p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->type:I

    .line 2
    .line 3
    return-void
.end method
