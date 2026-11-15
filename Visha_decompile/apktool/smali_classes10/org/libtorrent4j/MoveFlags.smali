.class public final enum Lorg/libtorrent4j/MoveFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/MoveFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/MoveFlags;

.field public static final enum ALWAYS_REPLACE_FILES:Lorg/libtorrent4j/MoveFlags;

.field public static final enum DONT_REPLACE:Lorg/libtorrent4j/MoveFlags;

.field public static final enum FAIL_IF_EXIST:Lorg/libtorrent4j/MoveFlags;

.field public static final enum RESET_SAVE_PATH:Lorg/libtorrent4j/MoveFlags;

.field public static final enum RESET_SAVE_PATH_UNCHECKED:Lorg/libtorrent4j/MoveFlags;


# instance fields
.field private final swigValue:Lorg/libtorrent4j/swig/move_flags_t;


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/MoveFlags;
    .locals 5

    sget-object v0, Lorg/libtorrent4j/MoveFlags;->ALWAYS_REPLACE_FILES:Lorg/libtorrent4j/MoveFlags;

    sget-object v1, Lorg/libtorrent4j/MoveFlags;->FAIL_IF_EXIST:Lorg/libtorrent4j/MoveFlags;

    sget-object v2, Lorg/libtorrent4j/MoveFlags;->DONT_REPLACE:Lorg/libtorrent4j/MoveFlags;

    sget-object v3, Lorg/libtorrent4j/MoveFlags;->RESET_SAVE_PATH:Lorg/libtorrent4j/MoveFlags;

    sget-object v4, Lorg/libtorrent4j/MoveFlags;->RESET_SAVE_PATH_UNCHECKED:Lorg/libtorrent4j/MoveFlags;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/libtorrent4j/MoveFlags;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/MoveFlags;

    const/4 v1, 0x0

    sget-object v2, Lorg/libtorrent4j/swig/move_flags_t;->always_replace_files:Lorg/libtorrent4j/swig/move_flags_t;

    const-string v3, "ALWAYS_REPLACE_FILES"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/MoveFlags;-><init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->ALWAYS_REPLACE_FILES:Lorg/libtorrent4j/MoveFlags;

    new-instance v0, Lorg/libtorrent4j/MoveFlags;

    const/4 v1, 0x1

    sget-object v2, Lorg/libtorrent4j/swig/move_flags_t;->fail_if_exist:Lorg/libtorrent4j/swig/move_flags_t;

    const-string v3, "FAIL_IF_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/MoveFlags;-><init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->FAIL_IF_EXIST:Lorg/libtorrent4j/MoveFlags;

    new-instance v0, Lorg/libtorrent4j/MoveFlags;

    const/4 v1, 0x2

    sget-object v2, Lorg/libtorrent4j/swig/move_flags_t;->dont_replace:Lorg/libtorrent4j/swig/move_flags_t;

    const-string v3, "DONT_REPLACE"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/MoveFlags;-><init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->DONT_REPLACE:Lorg/libtorrent4j/MoveFlags;

    new-instance v0, Lorg/libtorrent4j/MoveFlags;

    const/4 v1, 0x3

    sget-object v2, Lorg/libtorrent4j/swig/move_flags_t;->reset_save_path:Lorg/libtorrent4j/swig/move_flags_t;

    const-string v3, "RESET_SAVE_PATH"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/MoveFlags;-><init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->RESET_SAVE_PATH:Lorg/libtorrent4j/MoveFlags;

    new-instance v0, Lorg/libtorrent4j/MoveFlags;

    const/4 v1, 0x4

    sget-object v2, Lorg/libtorrent4j/swig/move_flags_t;->reset_save_path_unchecked:Lorg/libtorrent4j/swig/move_flags_t;

    const-string v3, "RESET_SAVE_PATH_UNCHECKED"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/MoveFlags;-><init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->RESET_SAVE_PATH_UNCHECKED:Lorg/libtorrent4j/MoveFlags;

    invoke-static {}, Lorg/libtorrent4j/MoveFlags;->$values()[Lorg/libtorrent4j/MoveFlags;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/MoveFlags;->$VALUES:[Lorg/libtorrent4j/MoveFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/libtorrent4j/swig/move_flags_t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/move_flags_t;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/libtorrent4j/MoveFlags;->swigValue:Lorg/libtorrent4j/swig/move_flags_t;

    return-void
.end method

.method public static fromSwig(Lorg/libtorrent4j/swig/move_flags_t;)Lorg/libtorrent4j/MoveFlags;
    .locals 5

    const-class v0, Lorg/libtorrent4j/MoveFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/MoveFlags;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/MoveFlags;->swig()Lorg/libtorrent4j/swig/move_flags_t;

    move-result-object v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enum value not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/MoveFlags;
    .locals 1

    const-class v0, Lorg/libtorrent4j/MoveFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/MoveFlags;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/MoveFlags;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/MoveFlags;->$VALUES:[Lorg/libtorrent4j/MoveFlags;

    invoke-virtual {v0}, [Lorg/libtorrent4j/MoveFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/MoveFlags;

    return-object v0
.end method


# virtual methods
.method public swig()Lorg/libtorrent4j/swig/move_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/MoveFlags;->swigValue:Lorg/libtorrent4j/swig/move_flags_t;

    return-object p0
.end method
