.class public abstract Lpna;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/schabi/newpipe/extractor/localization/Localization;)Lpy7;
    .locals 1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lqy7;->a(Ljava/lang/String;Ljava/lang/String;)Lpy7;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/schabi/newpipe/extractor/localization/Localization;)Lona;
    .locals 0

    invoke-static {p0}, Lpna;->a(Lorg/schabi/newpipe/extractor/localization/Localization;)Lpy7;

    const/4 p0, 0x0

    return-object p0
.end method
