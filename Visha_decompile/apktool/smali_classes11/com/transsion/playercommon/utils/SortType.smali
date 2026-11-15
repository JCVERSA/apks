.class public final enum Lcom/transsion/playercommon/utils/SortType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/utils/SortType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "\u5e9f\u5f03\uff0c\u4f7f\u7528 com.transsion.dbdata.utils.SortUtil.SortType.MANUAL"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/playercommon/utils/SortType;

.field public static final enum SORT_MANUALLY:Lcom/transsion/playercommon/utils/SortType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/playercommon/utils/SortType;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/SortType;->SORT_MANUALLY:Lcom/transsion/playercommon/utils/SortType;

    filled-new-array {v0}, [Lcom/transsion/playercommon/utils/SortType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/playercommon/utils/SortType;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "SORT_MANUALLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/playercommon/utils/SortType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/playercommon/utils/SortType;->SORT_MANUALLY:Lcom/transsion/playercommon/utils/SortType;

    invoke-static {}, Lcom/transsion/playercommon/utils/SortType;->$values()[Lcom/transsion/playercommon/utils/SortType;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/utils/SortType;->$VALUES:[Lcom/transsion/playercommon/utils/SortType;

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

    iput p3, p0, Lcom/transsion/playercommon/utils/SortType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/utils/SortType;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/utils/SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/utils/SortType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/utils/SortType;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/SortType;->$VALUES:[Lcom/transsion/playercommon/utils/SortType;

    invoke-virtual {v0}, [Lcom/transsion/playercommon/utils/SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/utils/SortType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/utils/SortType;->value:I

    return p0
.end method
