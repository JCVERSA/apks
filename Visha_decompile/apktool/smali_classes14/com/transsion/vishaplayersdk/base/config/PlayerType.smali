.class public final enum Lcom/transsion/vishaplayersdk/base/config/PlayerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/vishaplayersdk/base/config/PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum EXO_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum IJK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum NO_SUPPORT_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum VK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

.field public static final enum VLC_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/vishaplayersdk/base/config/PlayerType;
    .locals 7

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->NO_SUPPORT_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->EXO_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v3, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->IJK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v4, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VLC_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v5, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v6, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "NO_SUPPORT_PLAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->NO_SUPPORT_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "ANDROID_MEDIA_PLAYER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->ANDROID_MEDIA_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "EXO_PLAYER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->EXO_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "IJK_PLAYER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->IJK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "VLC_PLAYER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VLC_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "MGTV_PLAYER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    const-string v1, "VK_PLAYER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->VK_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-static {}, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->$values()[Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->$VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerType;
    .locals 1

    const-class v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/vishaplayersdk/base/config/PlayerType;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->$VALUES:[Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-virtual {v0}, [Lcom/transsion/vishaplayersdk/base/config/PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    return-object v0
.end method
