.class public abstract enum Lcom/transsion/dbdata/engine/base/layer/DataLayer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/engine/base/layer/DataLayer$MEDIA_STORE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/engine/base/layer/DataLayer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/dbdata/engine/base/layer/DataLayer;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MEDIA_STORE",
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

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/engine/base/layer/DataLayer;

.field public static final enum MEDIA_STORE:Lcom/transsion/dbdata/engine/base/layer/DataLayer;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/engine/base/layer/DataLayer;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->MEDIA_STORE:Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    filled-new-array {v0}, [Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer$MEDIA_STORE;

    const-string v1, "MEDIA_STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/engine/base/layer/DataLayer$MEDIA_STORE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->MEDIA_STORE:Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    invoke-static {}, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->$values()[Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->$VALUES:[Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/engine/base/layer/DataLayer;-><init>(Ljava/lang/String;I)V

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

    sget-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/engine/base/layer/DataLayer;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/engine/base/layer/DataLayer;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/engine/base/layer/DataLayer;->$VALUES:[Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/engine/base/layer/DataLayer;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic getInstance(Landroid/content/Context;)Lpu4;
.end method
