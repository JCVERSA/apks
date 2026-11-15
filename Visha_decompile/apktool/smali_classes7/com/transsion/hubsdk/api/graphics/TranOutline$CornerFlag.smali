.class public final enum Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/graphics/TranOutline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum ALL:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum BOTTOM_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum BOTTOM_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum TOP:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum TOP_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

.field public static final enum TOP_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;


# direct methods
.method private static synthetic $values()[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;
    .locals 9

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v1, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v2, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v3, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v4, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v6, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v7, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    sget-object v8, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    filled-new-array/range {v0 .. v8}, [Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM_LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->LEFT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->TOP:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->RIGHT:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    const-string v1, "ALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->$values()[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->$VALUES:[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;
    .locals 1

    const-class v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    return-object p0
.end method

.method public static values()[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->$VALUES:[Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    invoke-virtual {v0}, [Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;

    return-object v0
.end method
