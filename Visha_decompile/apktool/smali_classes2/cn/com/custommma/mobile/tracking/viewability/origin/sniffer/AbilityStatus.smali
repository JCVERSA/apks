.class public final enum Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

.field public static final enum EXPLORERING:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

.field public static final enum UPLOADED:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

.field public static final enum WAITINGUPLOAD:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    const-string v1, "EXPLORERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->EXPLORERING:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    new-instance v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    const-string v2, "WAITINGUPLOAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->WAITINGUPLOAD:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    new-instance v2, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    const-string v3, "UPLOADED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->UPLOADED:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    filled-new-array {v0, v1, v2}, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    move-result-object v0

    sput-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->$VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;
    .locals 1

    const-class v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    return-object p0
.end method

.method public static values()[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->$VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    invoke-virtual {v0}, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    return-object v0
.end method
