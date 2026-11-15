.class public final enum Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/TransferNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationPermissionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

.field public static final enum DENIED_LIMIT_REACHED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

.field public static final enum GRANTED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

.field public static final enum PENDING_USER_ACTION:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;


# instance fields
.field private final mCode:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;
    .locals 3

    sget-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->GRANTED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    sget-object v1, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->PENDING_USER_ACTION:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    sget-object v2, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->DENIED_LIMIT_REACHED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->GRANTED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    new-instance v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    const-string v1, "PENDING_USER_ACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->PENDING_USER_ACTION:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    new-instance v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    const-string v1, "DENIED_LIMIT_REACHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->DENIED_LIMIT_REACHED:Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    invoke-static {}, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->$values()[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->$VALUES:[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->$VALUES:[Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    invoke-virtual {v0}, [Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/utils/TransferNotificationHelper$NotificationPermissionStatus;->mCode:I

    return p0
.end method
