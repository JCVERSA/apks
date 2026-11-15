.class public final enum Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "FAILURE",
        "dbdata_release"
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

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

.field public static final enum FAILURE:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

.field public static final enum SUCCESS:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->SUCCESS:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    sget-object v1, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->FAILURE:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    filled-new-array {v0, v1}, [Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->SUCCESS:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    new-instance v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->FAILURE:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    invoke-static {}, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->$values()[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->$VALUES:[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->$ENTRIES:Ldb3;

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

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->$VALUES:[Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    return-object v0
.end method
