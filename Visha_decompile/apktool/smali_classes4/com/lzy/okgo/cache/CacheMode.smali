.class public final enum Lcom/lzy/okgo/cache/CacheMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/cache/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum IF_NONE_CACHE_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;


# direct methods
.method private static synthetic $values()[Lcom/lzy/okgo/cache/CacheMode;
    .locals 5

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v3, Lcom/lzy/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    sget-object v4, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "REQUEST_FAILED_READ_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "IF_NONE_CACHE_REQUEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "FIRST_CACHE_THEN_REQUEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    invoke-static {}, Lcom/lzy/okgo/cache/CacheMode;->$values()[Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->$VALUES:[Lcom/lzy/okgo/cache/CacheMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    const-class v0, Lcom/lzy/okgo/cache/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->$VALUES:[Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0}, [Lcom/lzy/okgo/cache/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method
