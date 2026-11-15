.class public final enum Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum FIVE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum LOW:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum SIX:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum THREE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

.field public static final enum TWO:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;


# instance fields
.field private final val:I


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 8

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->LOW:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TWO:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->THREE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->FIVE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->SIX:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    sget-object v7, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    filled-new-array/range {v0 .. v7}, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->LOW:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "TWO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TWO:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "THREE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->THREE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "DEFAULT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "FIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->FIVE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "SIX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->SIX:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-string v1, "TOP_PRIORITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->$values()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

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

    iput p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->val:I

    return-void
.end method

.method public static fromValue(I)Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 5

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->val:I

    return p0
.end method
