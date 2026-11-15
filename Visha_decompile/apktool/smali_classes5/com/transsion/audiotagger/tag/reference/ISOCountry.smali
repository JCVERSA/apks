.class public Lcom/transsion/audiotagger/tag/reference/ISOCountry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;
    }
.end annotation


# static fields
.field private static codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;",
            ">;"
        }
    .end annotation
.end field

.field private static descriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->values()[Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    invoke-static {v4}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->a(Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->values()[Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->b(Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryByCode(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;

    return-object p0
.end method

.method public static getCountryByDescription(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;

    return-object p0
.end method

.method public static getDescriptionsAsArray()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->values()[Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;->b(Lcom/transsion/audiotagger/tag/reference/ISOCountry$Country;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
