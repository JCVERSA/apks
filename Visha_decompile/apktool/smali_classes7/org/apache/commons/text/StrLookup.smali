.class public abstract Lorg/apache/commons/text/StrLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/lookup/StringLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrLookup$SystemPropertiesStrLookup;,
        Lorg/apache/commons/text/StrLookup$ResourceBundleLookup;,
        Lorg/apache/commons/text/StrLookup$MapStrLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/lookup/StringLookup;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StrLookup$MapStrLookup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/commons/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/text/StrLookup;

    new-instance v0, Lorg/apache/commons/text/StrLookup$SystemPropertiesStrLookup;

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>(Lorg/apache/commons/text/StrLookup$1;)V

    sput-object v0, Lorg/apache/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/text/StrLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/StrLookup<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/text/StrLookup;

    return-object v0
.end method

.method public static resourceBundleLookup(Ljava/util/ResourceBundle;)Lorg/apache/commons/text/StrLookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            ")",
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrLookup$ResourceBundleLookup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/text/StrLookup$ResourceBundleLookup;-><init>(Ljava/util/ResourceBundle;Lorg/apache/commons/text/StrLookup$1;)V

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/text/StrLookup;

    return-object v0
.end method
