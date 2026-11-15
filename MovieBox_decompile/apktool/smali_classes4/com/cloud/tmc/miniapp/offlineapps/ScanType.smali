.class public final enum Lcom/cloud/tmc/miniapp/offlineapps/ScanType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/offlineapps/ScanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

.field public static final enum LEVEL_0:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

.field public static final enum LEVEL_1:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;


# instance fields
.field private type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 3
    .line 4
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_0:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_1:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 2
    .line 3
    const-string v1, "LEVEL_0"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_0:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 12
    .line 13
    const-string v1, "LEVEL_1"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->LEVEL_1:Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->$values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 26
    .line 27
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
    iput p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/offlineapps/ScanType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->$VALUES:[Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/miniapp/offlineapps/ScanType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/ScanType;->type:I

    .line 2
    .line 3
    return-void
.end method
