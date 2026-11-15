.class public Lorg/bouncycastle/i18n/LocalizedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lrc3;


# direct methods
.method public constructor <init>(Lrc3;)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lrc3;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getErrorMessage()Lrc3;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
