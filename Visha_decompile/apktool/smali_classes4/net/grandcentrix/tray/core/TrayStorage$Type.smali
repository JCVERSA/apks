.class public final enum Lnet/grandcentrix/tray/core/TrayStorage$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/tray/core/TrayStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/grandcentrix/tray/core/TrayStorage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/grandcentrix/tray/core/TrayStorage$Type;

.field public static final enum DEVICE:Lnet/grandcentrix/tray/core/TrayStorage$Type;

.field public static final enum UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

.field public static final enum USER:Lnet/grandcentrix/tray/core/TrayStorage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/grandcentrix/tray/core/TrayStorage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    new-instance v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;

    const-string v2, "USER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/grandcentrix/tray/core/TrayStorage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->USER:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    new-instance v2, Lnet/grandcentrix/tray/core/TrayStorage$Type;

    const-string v3, "DEVICE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/grandcentrix/tray/core/TrayStorage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/grandcentrix/tray/core/TrayStorage$Type;->DEVICE:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    filled-new-array {v0, v1, v2}, [Lnet/grandcentrix/tray/core/TrayStorage$Type;

    move-result-object v0

    sput-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->$VALUES:[Lnet/grandcentrix/tray/core/TrayStorage$Type;

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

.method public static valueOf(Ljava/lang/String;)Lnet/grandcentrix/tray/core/TrayStorage$Type;
    .locals 1

    const-class v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object p0
.end method

.method public static values()[Lnet/grandcentrix/tray/core/TrayStorage$Type;
    .locals 1

    sget-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->$VALUES:[Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {v0}, [Lnet/grandcentrix/tray/core/TrayStorage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object v0
.end method
