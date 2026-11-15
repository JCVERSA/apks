.class public Lcom/transsion/hubsdk/core/internal/telephony/util/TranThubLocaleUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/telephony/util/ITranLocaleUtilsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/internal/telephony/util/TranAospLocaleUtils;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
