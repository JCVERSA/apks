.class public final enum Lorg/libtorrent4j/Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/Priority;

.field public static final enum DEFAULT:Lorg/libtorrent4j/Priority;

.field public static final enum FIVE:Lorg/libtorrent4j/Priority;

.field public static final enum IGNORE:Lorg/libtorrent4j/Priority;

.field public static final enum LOW:Lorg/libtorrent4j/Priority;

.field public static final enum SIX:Lorg/libtorrent4j/Priority;

.field public static final enum THREE:Lorg/libtorrent4j/Priority;

.field public static final enum TOP_PRIORITY:Lorg/libtorrent4j/Priority;

.field public static final enum TWO:Lorg/libtorrent4j/Priority;


# instance fields
.field private final swigValue:B


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/Priority;
    .locals 8

    sget-object v0, Lorg/libtorrent4j/Priority;->IGNORE:Lorg/libtorrent4j/Priority;

    sget-object v1, Lorg/libtorrent4j/Priority;->LOW:Lorg/libtorrent4j/Priority;

    sget-object v2, Lorg/libtorrent4j/Priority;->TWO:Lorg/libtorrent4j/Priority;

    sget-object v3, Lorg/libtorrent4j/Priority;->THREE:Lorg/libtorrent4j/Priority;

    sget-object v4, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    sget-object v5, Lorg/libtorrent4j/Priority;->FIVE:Lorg/libtorrent4j/Priority;

    sget-object v6, Lorg/libtorrent4j/Priority;->SIX:Lorg/libtorrent4j/Priority;

    sget-object v7, Lorg/libtorrent4j/Priority;->TOP_PRIORITY:Lorg/libtorrent4j/Priority;

    filled-new-array/range {v0 .. v7}, [Lorg/libtorrent4j/Priority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->IGNORE:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->LOW:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "TWO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->TWO:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "THREE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->THREE:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "DEFAULT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->DEFAULT:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "FIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->FIVE:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "SIX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->SIX:Lorg/libtorrent4j/Priority;

    new-instance v0, Lorg/libtorrent4j/Priority;

    const-string v1, "TOP_PRIORITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/Priority;->TOP_PRIORITY:Lorg/libtorrent4j/Priority;

    invoke-static {}, Lorg/libtorrent4j/Priority;->$values()[Lorg/libtorrent4j/Priority;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/Priority;->$VALUES:[Lorg/libtorrent4j/Priority;

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

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/libtorrent4j/Priority;->swigValue:B

    return-void
.end method

.method public static array(Lorg/libtorrent4j/Priority;I)[Lorg/libtorrent4j/Priority;
    .locals 2

    new-array v0, p1, [Lorg/libtorrent4j/Priority;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aput-object p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static array2vector([Lorg/libtorrent4j/Priority;)Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/byte_vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/byte_vector;->add(Ljava/lang/Byte;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/Priority;
    .locals 5

    const-class v0, Lorg/libtorrent4j/Priority;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/Priority;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/Priority;->swig()B

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid native value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/Priority;
    .locals 1

    const-class v0, Lorg/libtorrent4j/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/Priority;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/Priority;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/Priority;->$VALUES:[Lorg/libtorrent4j/Priority;

    invoke-virtual {v0}, [Lorg/libtorrent4j/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/Priority;

    return-object v0
.end method

.method public static vector2array(Lorg/libtorrent4j/swig/byte_vector;)[Lorg/libtorrent4j/Priority;
    .locals 4

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/libtorrent4j/Priority;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/byte_vector;->get(I)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lorg/libtorrent4j/Priority;->fromSwig(I)Lorg/libtorrent4j/Priority;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public swig()B
    .locals 0

    iget-byte p0, p0, Lorg/libtorrent4j/Priority;->swigValue:B

    return p0
.end method
