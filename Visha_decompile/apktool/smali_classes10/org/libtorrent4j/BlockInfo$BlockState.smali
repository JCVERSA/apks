.class public final enum Lorg/libtorrent4j/BlockInfo$BlockState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/BlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/BlockInfo$BlockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/BlockInfo$BlockState;

.field public static final enum FINISHED:Lorg/libtorrent4j/BlockInfo$BlockState;

.field public static final enum NONE:Lorg/libtorrent4j/BlockInfo$BlockState;

.field public static final enum REQUESTED:Lorg/libtorrent4j/BlockInfo$BlockState;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/BlockInfo$BlockState;

.field public static final enum WRITING:Lorg/libtorrent4j/BlockInfo$BlockState;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/BlockInfo$BlockState;
    .locals 5

    sget-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->NONE:Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v1, Lorg/libtorrent4j/BlockInfo$BlockState;->REQUESTED:Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v2, Lorg/libtorrent4j/BlockInfo$BlockState;->WRITING:Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v3, Lorg/libtorrent4j/BlockInfo$BlockState;->FINISHED:Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v4, Lorg/libtorrent4j/BlockInfo$BlockState;->UNKNOWN:Lorg/libtorrent4j/BlockInfo$BlockState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/libtorrent4j/BlockInfo$BlockState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v1, Lorg/libtorrent4j/swig/block_info$block_state_t;->none:Lorg/libtorrent4j/swig/block_info$block_state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/block_info$block_state_t;->swigValue()I

    move-result v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/BlockInfo$BlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->NONE:Lorg/libtorrent4j/BlockInfo$BlockState;

    new-instance v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v1, Lorg/libtorrent4j/swig/block_info$block_state_t;->requested:Lorg/libtorrent4j/swig/block_info$block_state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/block_info$block_state_t;->swigValue()I

    move-result v1

    const-string v2, "REQUESTED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/BlockInfo$BlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->REQUESTED:Lorg/libtorrent4j/BlockInfo$BlockState;

    new-instance v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v1, Lorg/libtorrent4j/swig/block_info$block_state_t;->writing:Lorg/libtorrent4j/swig/block_info$block_state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/block_info$block_state_t;->swigValue()I

    move-result v1

    const-string v2, "WRITING"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/BlockInfo$BlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->WRITING:Lorg/libtorrent4j/BlockInfo$BlockState;

    new-instance v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    sget-object v1, Lorg/libtorrent4j/swig/block_info$block_state_t;->finished:Lorg/libtorrent4j/swig/block_info$block_state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/block_info$block_state_t;->swigValue()I

    move-result v1

    const-string v2, "FINISHED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/BlockInfo$BlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->FINISHED:Lorg/libtorrent4j/BlockInfo$BlockState;

    new-instance v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/BlockInfo$BlockState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->UNKNOWN:Lorg/libtorrent4j/BlockInfo$BlockState;

    invoke-static {}, Lorg/libtorrent4j/BlockInfo$BlockState;->$values()[Lorg/libtorrent4j/BlockInfo$BlockState;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->$VALUES:[Lorg/libtorrent4j/BlockInfo$BlockState;

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

    iput p3, p0, Lorg/libtorrent4j/BlockInfo$BlockState;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/BlockInfo$BlockState;
    .locals 5

    const-class v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/BlockInfo$BlockState;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/BlockInfo$BlockState;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/BlockInfo$BlockState;->UNKNOWN:Lorg/libtorrent4j/BlockInfo$BlockState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/BlockInfo$BlockState;
    .locals 1

    const-class v0, Lorg/libtorrent4j/BlockInfo$BlockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/BlockInfo$BlockState;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/BlockInfo$BlockState;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/BlockInfo$BlockState;->$VALUES:[Lorg/libtorrent4j/BlockInfo$BlockState;

    invoke-virtual {v0}, [Lorg/libtorrent4j/BlockInfo$BlockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/BlockInfo$BlockState;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/BlockInfo$BlockState;->swigValue:I

    return p0
.end method
