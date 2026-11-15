.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mLabel:Ljava/lang/String;

.field mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object p0
.end method
