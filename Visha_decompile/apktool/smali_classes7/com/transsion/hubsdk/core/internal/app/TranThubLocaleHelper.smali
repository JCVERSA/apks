.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranLocaleHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
