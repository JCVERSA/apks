.class public Lcom/transsion/tools/model/SkinsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# static fields
.field public static final LOAD_COMPLETE:I = 0x0

.field public static final LOAD_END:I = 0x1

.field public static final LOAD_FAIL:I = 0x2

.field public static final MAX_PAGE_SIZE:I = 0x6

.field public static final TAG_SKIN_CACHE:Ljava/lang/String; = "tag_skin_cache"


# instance fields
.field private mCustomTheme:Lcom/transsion/dbdata/beans/ThemeData;

.field private final mDefaultSkins:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoadStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlineSkins:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mDefaultSkins:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mOnlineSkins:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "theme_preview_key"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object p1, p0, Lcom/transsion/tools/model/SkinsViewModel;->mCustomTheme:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tools/model/SkinsViewModel;IILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/model/SkinsViewModel;->lambda$getCacheData$1(IILjava/util/List;)V

    return-void
.end method

.method private addLocalThemes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->image_default_system:I

    sget v2, Lcom/transsion/tools/R$drawable;->icon_skin_default_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->default_skin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/tools/R$string;->default_skin_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->addMusicThemes(Ljava/util/List;)V

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_starry_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_starry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_starry_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_feather_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_feather:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_feather_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_metal_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_metal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_metal_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_sphere_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_sphere:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_sphere_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_jellyfish_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_jellyfish:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_jellyfish_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_gradient_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_gradient:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$string;->skin_gradient_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_household_fold:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_household:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/tools/R$string;->skin_household_name:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMusicThemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lvha;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/tools/model/SkinsViewModel;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->lambda$getCacheData$0(Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->lambda$insertCache$2(Ljava/util/List;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/tools/model/SkinsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mOnlineSkins:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private synthetic lambda$getCacheData$0(Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "tag_skin_cache"

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/transsion/tools/model/SkinsViewModel$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/model/SkinsViewModel$1;-><init>(Lcom/transsion/tools/model/SkinsViewModel;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p1, p0}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getCacheData$1(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mOnlineSkins:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/model/SkinsViewModel;->getOnlineData(II)V

    return-void
.end method

.method private static synthetic lambda$insertCache$2(Ljava/util/List;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "tag_skin_cache"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public createLocalSkins(Landroid/content/Context;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/transsion/tools/R$drawable;->image_custom_preview_fold:I

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/transsion/tools/R$drawable;->image_custom_preview:I

    goto :goto_0

    :goto_1
    sget v5, Lcom/transsion/tools/R$drawable;->icon_skin_custom:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/tools/R$string;->skins_customize:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v7

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;II)V

    iget-object p1, p0, Lcom/transsion/tools/model/SkinsViewModel;->mCustomTheme:Lcom/transsion/dbdata/beans/ThemeData;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    iput-object v2, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    iput-object v2, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    iput-object v2, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    iget v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    iput v2, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    iget v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    iput v2, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/ThemeData;->tabPath:Ljava/lang/String;

    iput-object p1, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbPath:Ljava/lang/String;

    iput v1, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    iput v1, v7, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/transsion/tools/model/SkinsViewModel;->addLocalThemes(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lydc;->g()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v2, Lcom/transsion/tools/R$drawable;->image_default_system:I

    sget v3, Lcom/transsion/tools/R$drawable;->icon_skin_default:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/tools/R$string;->default_skin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/transsion/tools/R$color;->os_bg_primary_color:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/tools/R$color;->visha_basic_color:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/transsion/tools/model/SkinsViewModel;->addMusicThemes(Ljava/util/List;)V

    :cond_3
    new-instance p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_feather:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_feather:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->icon_skin_metal:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->local_skin_metal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v1, v2, v3}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v8, Lcom/transsion/tools/R$drawable;->icon_skin_rock:I

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->local_skin_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$color;->custom_color_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const/4 v10, 0x0

    move-object v4, p1

    move v5, v8

    move v6, v8

    invoke-direct/range {v4 .. v10}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/transsion/tools/model/SkinsViewModel;->addLocalThemes(Ljava/util/List;)V

    :goto_2
    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mDefaultSkins:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getCacheData(Landroid/content/Context;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lip9;

    invoke-direct {v0, p0}, Lip9;-><init>(Lcom/transsion/tools/model/SkinsViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Ljp9;

    invoke-direct {v0, p0, p2, p3}, Ljp9;-><init>(Lcom/transsion/tools/model/SkinsViewModel;II)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public getDefaultSkins()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mDefaultSkins:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getLoadStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getOnlineData(II)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0, p1, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getSkins(II)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/model/SkinsViewModel$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/tools/model/SkinsViewModel$2;-><init>(Lcom/transsion/tools/model/SkinsViewModel;II)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public getOnlineSkins()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mOnlineSkins:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public insertCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    new-instance v0, Lhp9;

    invoke-direct {v0, p1}, Lhp9;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public updateCustomTheme()V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "theme_preview_key"

    invoke-static {v0, v1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mCustomTheme:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method
