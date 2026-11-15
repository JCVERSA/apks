.class public final enum Lcom/transsion/playercommon/share/constants/SharePlatformConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/share/constants/SharePlatformConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/playercommon/share/constants/SharePlatformConfig;",
        "",
        "packageName",
        "",
        "displayName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "getDisplayName",
        "TELEGRAM",
        "WHATSAPP",
        "MESSENGER",
        "WHATSAPP_BUSINESS",
        "MESSAGES",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

.field public static final enum MESSAGES:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

.field public static final enum MESSENGER:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

.field public static final enum TELEGRAM:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

.field public static final enum WHATSAPP:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

.field public static final enum WHATSAPP_BUSINESS:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;
    .locals 5

    sget-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->TELEGRAM:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    sget-object v1, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    sget-object v2, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->MESSENGER:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    sget-object v3, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP_BUSINESS:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    sget-object v4, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->MESSAGES:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    const-string v1, "org.telegram.messenger"

    const-string v2, "Telegram"

    const-string v3, "TELEGRAM"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->TELEGRAM:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    new-instance v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    const-string v1, "com.whatsapp"

    const-string v2, "WhatsApp"

    const-string v3, "WHATSAPP"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    new-instance v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    const-string v1, "com.facebook.orca"

    const-string v2, "Messenger"

    const-string v3, "MESSENGER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->MESSENGER:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    new-instance v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    const-string v1, "com.whatsapp.w4b"

    const-string v2, "WhatsApp Business"

    const-string v3, "WHATSAPP_BUSINESS"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->WHATSAPP_BUSINESS:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    new-instance v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    const-string v1, "com.google.android.apps.messaging"

    const-string v2, "Messages"

    const-string v3, "MESSAGES"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->MESSAGES:Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-static {}, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->$values()[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->$VALUES:[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/share/constants/SharePlatformConfig;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->$VALUES:[Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/share/constants/SharePlatformConfig;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/share/constants/SharePlatformConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method
