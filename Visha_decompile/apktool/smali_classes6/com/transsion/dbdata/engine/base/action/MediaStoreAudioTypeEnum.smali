.class public final enum Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;",
        "",
        "Ljava/lang/Class;",
        "outPutType",
        "Lqu4;",
        "typeHandler",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V",
        "Ljava/lang/Class;",
        "getOutPutType",
        "()Ljava/lang/Class;",
        "Lqu4;",
        "getTypeHandler",
        "()Lqu4;",
        "AUDIO_ITEM",
        "SEARCH_BEAN",
        "MEDIA_BUCKET",
        "AUDIO_RESULT_ITEM",
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

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

.field public static final enum AUDIO_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

.field public static final enum AUDIO_RESULT_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

.field public static final enum MEDIA_BUCKET:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

.field public static final enum SEARCH_BEAN:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;


# instance fields
.field private final outPutType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final typeHandler:Lqu4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqu4;"
        }
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->AUDIO_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    sget-object v1, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->SEARCH_BEAN:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    sget-object v2, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->MEDIA_BUCKET:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    sget-object v3, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->AUDIO_RESULT_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v1, Ler;

    invoke-direct {v1}, Ler;-><init>()V

    const-string v2, "AUDIO_ITEM"

    const/4 v3, 0x0

    const-class v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->AUDIO_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v1, Lq39;

    invoke-direct {v1}, Lq39;-><init>()V

    const-string v2, "SEARCH_BEAN"

    const/4 v3, 0x1

    const-class v4, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->SEARCH_BEAN:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v1, Lyb6;

    invoke-direct {v1}, Lyb6;-><init>()V

    const-string v2, "MEDIA_BUCKET"

    const/4 v3, 0x2

    const-class v4, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->MEDIA_BUCKET:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    new-instance v1, Luz;

    invoke-direct {v1}, Luz;-><init>()V

    const-string v2, "AUDIO_RESULT_ITEM"

    const/4 v3, 0x3

    const-class v4, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->AUDIO_RESULT_ITEM:Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    invoke-static {}, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->$values()[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->$VALUES:[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lqu4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->outPutType:Ljava/lang/Class;

    iput-object p4, p0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->typeHandler:Lqu4;

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

    sget-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->$VALUES:[Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getOutPutType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->outPutType:Ljava/lang/Class;

    return-object p0
.end method

.method public final getTypeHandler()Lqu4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqu4;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;->typeHandler:Lqu4;

    return-object p0
.end method
