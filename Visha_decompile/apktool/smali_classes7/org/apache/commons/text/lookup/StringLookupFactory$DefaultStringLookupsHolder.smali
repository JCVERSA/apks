.class final Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/lookup/StringLookupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultStringLookupsHolder"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;


# instance fields
.field private final defaultStringLookups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;-><init>(Ljava/util/Properties;)V

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "org.apache.commons.text.lookup.StringLookupFactory.defaultStringLookups"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->parseStringLookups(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->createDefaultStringLookups()Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->defaultStringLookups:Ljava/util/Map;

    return-void
.end method

.method private static addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/lookup/DefaultStringLookup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/text/lookup/DefaultStringLookup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/text/lookup/DefaultStringLookup;->getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "base64"

    invoke-static {v0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/text/lookup/DefaultStringLookup;->getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static createDefaultStringLookups()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    sget-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v1, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V

    return-object v0
.end method

.method private static parseStringLookups(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "[\\s,]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/text/lookup/DefaultStringLookup;->valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->addLookup(Lorg/apache/commons/text/lookup/DefaultStringLookup;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default string lookups definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDefaultStringLookups()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->defaultStringLookups:Ljava/util/Map;

    return-object p0
.end method
