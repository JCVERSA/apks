.class public final enum Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

.field public static final enum TRACK1_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

.field public static final enum TRACK2_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

.field public static final enum TRACK3_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

.field public static final enum TRACK4_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    const/4 v1, 0x0

    const-string v2, "25"

    const-string v3, "TRACK1_4"

    invoke-direct {v0, v3, v1, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK1_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    new-instance v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    const/4 v2, 0x1

    const-string v3, "50"

    const-string v4, "TRACK2_4"

    invoke-direct {v1, v4, v2, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK2_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    new-instance v2, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    const/4 v3, 0x2

    const-string v4, "75"

    const-string v5, "TRACK3_4"

    invoke-direct {v2, v5, v3, v4}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK3_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    new-instance v3, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    const/4 v4, 0x3

    const-string v5, "100"

    const-string v6, "TRACK4_4"

    invoke-direct {v3, v6, v4, v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK4_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    filled-new-array {v0, v1, v2, v3}, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    move-result-object v0

    sput-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->$VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;
    .locals 1

    const-class v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    return-object p0
.end method

.method public static values()[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->$VALUES:[Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-virtual {v0}, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->value:Ljava/lang/String;

    return-object p0
.end method
