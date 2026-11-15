.class public final enum Lcom/mgmi/ads/api/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgmi/ads/api/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgmi/ads/api/f;

.field public static final enum COMMON:Lcom/mgmi/ads/api/f;

.field public static final enum FIX_LEFT_BOTTOM:Lcom/mgmi/ads/api/f;

.field public static final enum FIX_RIGHT_BOTTOM:Lcom/mgmi/ads/api/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mgmi/ads/api/f;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/f;->COMMON:Lcom/mgmi/ads/api/f;

    new-instance v1, Lcom/mgmi/ads/api/f;

    const-string v2, "FIX_LEFT_BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgmi/ads/api/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgmi/ads/api/f;->FIX_LEFT_BOTTOM:Lcom/mgmi/ads/api/f;

    new-instance v2, Lcom/mgmi/ads/api/f;

    const-string v3, "FIX_RIGHT_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgmi/ads/api/f;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgmi/ads/api/f;->FIX_RIGHT_BOTTOM:Lcom/mgmi/ads/api/f;

    filled-new-array {v0, v1, v2}, [Lcom/mgmi/ads/api/f;

    move-result-object v0

    sput-object v0, Lcom/mgmi/ads/api/f;->$VALUES:[Lcom/mgmi/ads/api/f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgmi/ads/api/f;
    .locals 1

    const-class v0, Lcom/mgmi/ads/api/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ads/api/f;

    return-object p0
.end method

.method public static values()[Lcom/mgmi/ads/api/f;
    .locals 1

    sget-object v0, Lcom/mgmi/ads/api/f;->$VALUES:[Lcom/mgmi/ads/api/f;

    invoke-virtual {v0}, [Lcom/mgmi/ads/api/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgmi/ads/api/f;

    return-object v0
.end method
