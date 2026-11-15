.class public final Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/util/CardErrorTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardDetailedErrorException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00060\u0001j\u0002`\u0002BW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u000b\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "cardId",
        "",
        "message",
        "cause",
        "",
        "templateId",
        "details",
        "",
        "groupId",
        "metadata",
        "Lorg/json/JSONObject;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V",
        "getCardId",
        "()Ljava/lang/String;",
        "getDetails",
        "()Ljava/util/Map;",
        "getGroupId$div_storage_release",
        "getMetadata",
        "()Lorg/json/JSONObject;",
        "getTemplateId",
        "div-storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cardId:Ljava/lang/String;

.field private final details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final groupId:Ljava/lang/String;

.field private final metadata:Lorg/json/JSONObject;

.field private final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "cardId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->cardId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->templateId:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->details:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->groupId:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->metadata:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final getCardId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->cardId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDetails()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->details:Ljava/util/Map;

    return-object p0
.end method

.method public final getGroupId$div_storage_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMetadata()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->metadata:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final getTemplateId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;->templateId:Ljava/lang/String;

    return-object p0
.end method
