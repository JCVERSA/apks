.class public final enum Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonitorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum EXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum IMPRESSION:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum NONVIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum UNMEASURED:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field public static final enum VIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v2, "IMPRESSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->IMPRESSION:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v3, "EXPOSEWITHABILITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->EXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v3, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v4, "VIDEOEXPOSEWITHABILITY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v4, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v5, "VIEWABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v6, "NONVIEWABLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->NONVIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    new-instance v6, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const-string v7, "UNMEASURED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->UNMEASURED:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    filled-new-array/range {v0 .. v6}, [Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    move-result-object v0

    sput-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->$VALUES:[Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

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

.method public static valueOf(Ljava/lang/String;)Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;
    .locals 1

    const-class v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    return-object p0
.end method

.method public static values()[Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->$VALUES:[Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-virtual {v0}, [Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    return-object v0
.end method
