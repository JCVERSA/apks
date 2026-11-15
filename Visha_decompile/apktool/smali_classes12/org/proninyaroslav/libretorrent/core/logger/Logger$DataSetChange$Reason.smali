.class public final enum Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

.field public static final enum CLEAN:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

.field public static final enum FILTER:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

.field public static final enum NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;
    .locals 3

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->CLEAN:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->FILTER:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    filled-new-array {v0, v1, v2}, [Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    const-string v1, "NEW_ENTRIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->NEW_ENTRIES:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    const-string v1, "CLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->CLEAN:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    const-string v1, "FILTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->FILTER:Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->$values()[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/logger/Logger$DataSetChange$Reason;

    return-object v0
.end method
