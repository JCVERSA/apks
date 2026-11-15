.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-static {p1, p2, v3, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    new-instance p3, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p0, p4, v0, p2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-static {p1, p2, v3, p4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    new-instance p3, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, p0, p4, v0, v2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->setParent(Ljava/util/Locale;)V

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
