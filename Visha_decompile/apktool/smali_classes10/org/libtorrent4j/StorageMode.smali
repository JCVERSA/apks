.class public final enum Lorg/libtorrent4j/StorageMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/StorageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/StorageMode;

.field public static final enum STORAGE_MODE_ALLOCATE:Lorg/libtorrent4j/StorageMode;

.field public static final enum STORAGE_MODE_SPARSE:Lorg/libtorrent4j/StorageMode;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/StorageMode;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/StorageMode;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/StorageMode;->STORAGE_MODE_ALLOCATE:Lorg/libtorrent4j/StorageMode;

    sget-object v1, Lorg/libtorrent4j/StorageMode;->STORAGE_MODE_SPARSE:Lorg/libtorrent4j/StorageMode;

    sget-object v2, Lorg/libtorrent4j/StorageMode;->UNKNOWN:Lorg/libtorrent4j/StorageMode;

    filled-new-array {v0, v1, v2}, [Lorg/libtorrent4j/StorageMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/StorageMode;

    sget-object v1, Lorg/libtorrent4j/swig/storage_mode_t;->storage_mode_allocate:Lorg/libtorrent4j/swig/storage_mode_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result v1

    const-string v2, "STORAGE_MODE_ALLOCATE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/StorageMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/StorageMode;->STORAGE_MODE_ALLOCATE:Lorg/libtorrent4j/StorageMode;

    new-instance v0, Lorg/libtorrent4j/StorageMode;

    sget-object v1, Lorg/libtorrent4j/swig/storage_mode_t;->storage_mode_sparse:Lorg/libtorrent4j/swig/storage_mode_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/storage_mode_t;->swigValue()I

    move-result v1

    const-string v2, "STORAGE_MODE_SPARSE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/StorageMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/StorageMode;->STORAGE_MODE_SPARSE:Lorg/libtorrent4j/StorageMode;

    new-instance v0, Lorg/libtorrent4j/StorageMode;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/StorageMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/StorageMode;->UNKNOWN:Lorg/libtorrent4j/StorageMode;

    invoke-static {}, Lorg/libtorrent4j/StorageMode;->$values()[Lorg/libtorrent4j/StorageMode;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/StorageMode;->$VALUES:[Lorg/libtorrent4j/StorageMode;

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

    iput p3, p0, Lorg/libtorrent4j/StorageMode;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/StorageMode;
    .locals 5

    const-class v0, Lorg/libtorrent4j/StorageMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/StorageMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/StorageMode;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/StorageMode;->UNKNOWN:Lorg/libtorrent4j/StorageMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/StorageMode;
    .locals 1

    const-class v0, Lorg/libtorrent4j/StorageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/StorageMode;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/StorageMode;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/StorageMode;->$VALUES:[Lorg/libtorrent4j/StorageMode;

    invoke-virtual {v0}, [Lorg/libtorrent4j/StorageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/StorageMode;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/StorageMode;->swigValue:I

    return p0
.end method
