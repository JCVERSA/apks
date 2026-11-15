.class public Lcom/mgtv/ssp/utils/language/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static j:Lcom/mgtv/ssp/utils/language/c;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/utils/language/AreaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mgtv/ssp/utils/language/AreaInfo;

.field private d:Ljava/util/Locale;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/ssp/utils/language/c;->i:Z

    return-void
.end method

.method public static a(I)I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/hunantv/imgo/b/a$a;->a(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_0
    sget p0, Lcom/mgtv/ssp/R$string;->area_vietnam:I

    return p0

    .line 10
    :cond_1
    sget p0, Lcom/mgtv/ssp/R$string;->area_indonesia:I

    return p0

    .line 11
    :cond_2
    sget p0, Lcom/mgtv/ssp/R$string;->area_thailand:I

    return p0

    .line 12
    :cond_3
    sget p0, Lcom/mgtv/ssp/R$string;->area_en:I

    return p0

    .line 13
    :cond_4
    sget p0, Lcom/mgtv/ssp/R$string;->area_malaysia:I

    return p0

    .line 14
    :cond_5
    sget p0, Lcom/mgtv/ssp/R$string;->area_hk_tw_mo:I

    return p0

    .line 15
    :cond_6
    sget p0, Lcom/mgtv/ssp/R$string;->area_cn:I

    return p0

    .line 16
    :cond_7
    sget p0, Lcom/mgtv/ssp/R$string;->area_self:I

    return p0
.end method

.method public static a()Lcom/mgtv/ssp/utils/language/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/ssp/utils/language/c;->j:Lcom/mgtv/ssp/utils/language/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/ssp/utils/language/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/utils/language/c;->j:Lcom/mgtv/ssp/utils/language/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/ssp/utils/language/c;

    invoke-direct {v1}, Lcom/mgtv/ssp/utils/language/c;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/utils/language/c;->j:Lcom/mgtv/ssp/utils/language/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/utils/language/c;->j:Lcom/mgtv/ssp/utils/language/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    .line 84
    invoke-static {p2}, Lcom/hunantv/imgo/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    if-nez v0, :cond_1

    .line 28
    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0

    .line 29
    :cond_1
    iget v0, v0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 30
    iget-boolean v0, p0, Lcom/mgtv/ssp/utils/language/c;->i:Z

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v2, "MO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 38
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v1, "ms"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v1, "vi"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v0, "th"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    .line 44
    :cond_8
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    .line 45
    :cond_9
    :goto_0
    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0

    .line 46
    :cond_a
    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method private b(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    const/4 v1, -0x1

    const/16 v2, 0xc

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/utils/language/c;->a(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x12

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x13

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x17

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_6
    const/16 p0, 0xa

    invoke-static {p0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/hunantv/imgo/b/a;->a(I)V

    invoke-static {v2}, Lcom/hunantv/imgo/b/a;->b(I)V

    :goto_0
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setAreaCode(I)V

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setIsOverSea(I)V

    :cond_8
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1
    iget v0, v0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 64
    iget-boolean v0, p0, Lcom/mgtv/ssp/utils/language/c;->i:Z

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v0, "HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 72
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v1

    .line 73
    :cond_6
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    .line 74
    :cond_7
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v0, "in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v0, "ms"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v0, "vi"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    const-string v0, "th"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 78
    :cond_8
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    .line 79
    :cond_9
    :goto_0
    new-instance p1, Ljava/util/Locale;

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 80
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public a(IZ)V
    .locals 4

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/mgtv/ssp/utils/language/c;->i:Z

    .line 30
    invoke-virtual {p0}, Lcom/mgtv/ssp/utils/language/c;->b()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->d:Ljava/util/Locale;

    .line 31
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/utils/language/AreaInfo;

    .line 32
    iget v3, v2, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    if-ne v3, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/utils/language/AreaInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 34
    iput-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentArea to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/mgtv/ssp/utils/language/b;->a()Lcom/mgtv/ssp/utils/language/b;

    move-result-object p1

    const-string v0, "ssp_area_current"

    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/ssp/utils/language/b;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    invoke-direct {p0}, Lcom/mgtv/ssp/utils/language/c;->c()V

    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/mgtv/ssp/utils/language/c;->b()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/util/Locale;)V

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ssp.language.change"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    iget p0, p0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    const-string p2, "area_code"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    if-eqz p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/utils/language/b;->a()Lcom/mgtv/ssp/utils/language/b;

    move-result-object p1

    const-string v0, "ssp_area_current"

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/utils/language/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    check-cast p1, Lcom/mgtv/ssp/utils/language/AreaInfo;

    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current area found in cache "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Lcom/mgtv/ssp/utils/language/AreaInfo;

    invoke-direct {p1}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    .line 22
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v0, -0x1

    iput v0, p1, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v0, 0x0

    iput v0, p1, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    .line 25
    :goto_0
    const-string p1, "current area default set to HK_TW_MO"

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/mgtv/ssp/utils/language/c;->b()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/util/Locale;)V

    .line 27
    invoke-direct {p0}, Lcom/mgtv/ssp/utils/language/c;->c()V

    .line 28
    invoke-direct {p0}, Lcom/mgtv/ssp/utils/language/c;->d()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 0

    .line 81
    iput-object p2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",laung:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/mgtv/ssp/utils/language/c;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/ssp/utils/language/c;->g:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/ssp/utils/language/c;->h:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mgtv/ssp/utils/language/c;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSystemCountry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/ssp/utils/language/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSystemLaunage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/ssp/utils/language/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentAppCountry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/ssp/utils/language/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentAppLaunage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/ssp/utils/language/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/ssp/utils/language/c;->a(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 54
    invoke-direct {p0, v1, p1}, Lcom/mgtv/ssp/utils/language/c;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mgtv/ssp/utils/language/c;->h:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/c;->g:Ljava/lang/String;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/mgtv/ssp/utils/language/c;->i:Z

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public b()Ljava/util/Locale;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/c;->c:Lcom/mgtv/ssp/utils/language/AreaInfo;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 3
    :cond_0
    iget v0, v0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    const/4 v1, -0x1

    const-string v2, "ms"

    const-string v3, "in"

    const-string v4, "vi"

    const-string v5, "th"

    if-eq v0, v1, :cond_7

    const/4 p0, 0x1

    if-eq v0, p0, :cond_6

    const/4 p0, 0x6

    if-eq v0, p0, :cond_5

    const/16 p0, 0xa

    if-eq v0, p0, :cond_4

    const/16 p0, 0x17

    if-eq v0, p0, :cond_3

    const/16 p0, 0x12

    if-eq v0, p0, :cond_2

    const/16 p0, 0x13

    if-eq v0, p0, :cond_1

    .line 4
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/util/Locale;

    const-string v0, "VN"

    invoke-direct {p0, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/util/Locale;

    const-string v0, "ID"

    invoke-direct {p0, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Ljava/util/Locale;

    const-string v0, "TH"

    invoke-direct {p0, v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 8
    :cond_4
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    .line 9
    :cond_5
    new-instance p0, Ljava/util/Locale;

    const-string v0, "MY"

    invoke-direct {p0, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_6
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 11
    :cond_7
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/utils/language/c;->a(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 17
    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 18
    :cond_9
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v6, "HK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 19
    :cond_a
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 20
    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 21
    :cond_c
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 22
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 23
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 24
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    return-object v1

    :cond_e
    :goto_0
    return-object p0
.end method
