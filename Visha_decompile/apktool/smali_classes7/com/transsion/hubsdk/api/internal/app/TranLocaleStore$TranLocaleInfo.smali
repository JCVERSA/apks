.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranLocaleInfo"
.end annotation


# instance fields
.field private mFullNameNative:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mParent:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mLocale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFullNameNative()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getParent()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mParent:Ljava/util/Locale;

    return-object p0
.end method

.method public setFullNameNative(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-void
.end method

.method public setParent(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mParent:Ljava/util/Locale;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->mId:Ljava/lang/String;

    return-object p0
.end method
