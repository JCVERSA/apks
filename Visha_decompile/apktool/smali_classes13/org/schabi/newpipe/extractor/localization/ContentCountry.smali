.class public Lorg/schabi/newpipe/extractor/localization/ContentCountry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;


# instance fields
.field private final countryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    sget-object v1, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static varargs listFrom([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/ContentCountry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
