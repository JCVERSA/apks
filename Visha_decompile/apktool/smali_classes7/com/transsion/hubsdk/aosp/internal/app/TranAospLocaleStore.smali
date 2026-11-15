.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocaleStoreAdapter;


# instance fields
.field private mTranAospExt:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->mTranAospExt:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->mTranAospExt:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->mTranAospExt:Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    return-object p0
.end method


# virtual methods
.method public getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;

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

    check-cast v3, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    new-instance p2, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p4, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;-><init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;->getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p3, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    invoke-virtual {p3}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStore;->getTranAospExt()Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt;->getLevelLocalesExt(Landroid/content/Context;Ljava/util/Set;Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;

    new-instance p2, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, p4, v0}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocaleStoreExt$TranAospLocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleStore$TranLocaleInfo;->setParent(Ljava/util/Locale;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method
