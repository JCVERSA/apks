.class public final enum Lcom/cloud/tupdate/dialog/DialogPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tupdate/dialog/DialogPosition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cloud/tupdate/dialog/DialogPosition;",
        "",
        "(Ljava/lang/String;I)V",
        "TOP",
        "MIDDLE",
        "BOTTOM",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tupdate/dialog/DialogPosition;

.field public static final enum BOTTOM:Lcom/cloud/tupdate/dialog/DialogPosition;

.field public static final enum MIDDLE:Lcom/cloud/tupdate/dialog/DialogPosition;

.field public static final enum TOP:Lcom/cloud/tupdate/dialog/DialogPosition;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tupdate/dialog/DialogPosition;
    .locals 3

    sget-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->TOP:Lcom/cloud/tupdate/dialog/DialogPosition;

    sget-object v1, Lcom/cloud/tupdate/dialog/DialogPosition;->MIDDLE:Lcom/cloud/tupdate/dialog/DialogPosition;

    sget-object v2, Lcom/cloud/tupdate/dialog/DialogPosition;->BOTTOM:Lcom/cloud/tupdate/dialog/DialogPosition;

    filled-new-array {v0, v1, v2}, [Lcom/cloud/tupdate/dialog/DialogPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tupdate/dialog/DialogPosition;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tupdate/dialog/DialogPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->TOP:Lcom/cloud/tupdate/dialog/DialogPosition;

    new-instance v0, Lcom/cloud/tupdate/dialog/DialogPosition;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tupdate/dialog/DialogPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->MIDDLE:Lcom/cloud/tupdate/dialog/DialogPosition;

    new-instance v0, Lcom/cloud/tupdate/dialog/DialogPosition;

    const-string v1, "BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tupdate/dialog/DialogPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->BOTTOM:Lcom/cloud/tupdate/dialog/DialogPosition;

    invoke-static {}, Lcom/cloud/tupdate/dialog/DialogPosition;->$values()[Lcom/cloud/tupdate/dialog/DialogPosition;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->$VALUES:[Lcom/cloud/tupdate/dialog/DialogPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tupdate/dialog/DialogPosition;
    .locals 1

    const-class v0, Lcom/cloud/tupdate/dialog/DialogPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tupdate/dialog/DialogPosition;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tupdate/dialog/DialogPosition;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->$VALUES:[Lcom/cloud/tupdate/dialog/DialogPosition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tupdate/dialog/DialogPosition;

    return-object v0
.end method
