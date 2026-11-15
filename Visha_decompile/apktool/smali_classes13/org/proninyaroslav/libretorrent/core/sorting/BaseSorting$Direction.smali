.class public final enum Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

.field public static final enum ASC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

.field public static final enum DESC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->ASC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->DESC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    filled-new-array {v0, v1}, [Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->ASC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    const-string v1, "DESC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->DESC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->$values()[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

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

.method public static fromValue(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
    .locals 5

    const-class v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->ASC:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    return-object v0
.end method
