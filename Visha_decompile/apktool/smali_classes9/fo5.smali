.class public abstract Lfo5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1

    new-instance p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->fromLocale(Ljava/util/Locale;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object p0

    return-object p0
.end method
