.class public Lcom/transsion/tools/model/CustomThemeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# static fields
.field public static final THEME_CACHE_KEY:Ljava/lang/String; = "theme_cache_key"


# instance fields
.field private mBackgroundList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColorList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFrameList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThumbList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mBackgroundList:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mThumbList:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mFrameList:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mColorList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public generateDefaultBackground()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_camera:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_white:I

    invoke-direct {v1, v2, v3, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_black:I

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mBackgroundList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public generateDefaultColor()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_0:I

    const-string v3, "custom_theme_color_0"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_1:I

    const-string v3, "custom_theme_color_1"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_8:I

    const-string v3, "custom_theme_color_8"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_2:I

    const-string v3, "custom_theme_color_2"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_9:I

    const-string v3, "custom_theme_color_9"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_4:I

    const-string v3, "custom_theme_color_4"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_3:I

    const-string v3, "custom_theme_color_3"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_15:I

    const-string v3, "custom_theme_color_15"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_18:I

    const-string v3, "custom_theme_color_18"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_19:I

    const-string v3, "custom_theme_color_19"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_5:I

    const-string v3, "custom_theme_color_5"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_13:I

    const-string v3, "custom_theme_color_13"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_17:I

    const-string v3, "custom_theme_color_17"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_7:I

    const-string v3, "custom_theme_color_7"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_6:I

    const-string v3, "custom_theme_color_6"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_10:I

    const-string v3, "custom_theme_color_10"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_16:I

    const-string v3, "custom_theme_color_16"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_11:I

    const-string v3, "custom_theme_color_11"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_20:I

    const-string v3, "custom_theme_color_20"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeColor;

    sget v2, Lcom/transsion/tools/R$color;->custom_color_21:I

    const-string v3, "custom_theme_color_21"

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeColor;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mColorList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public generateDefaultFrames()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_oval:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_star:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_pirate_hat:I

    sget v4, Lcom/transsion/tools/R$drawable;->ic_pirate_hat_preview:I

    invoke-direct {v1, v2, v4, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_beard:I

    sget v4, Lcom/transsion/tools/R$drawable;->ic_beard_preview:I

    invoke-direct {v1, v2, v4, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_birthday:I

    sget v4, Lcom/transsion/tools/R$drawable;->ic_birthday_preview:I

    invoke-direct {v1, v2, v4, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_fox:I

    sget v4, Lcom/transsion/tools/R$drawable;->ic_fox_preview:I

    invoke-direct {v1, v2, v4, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mFrameList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public generateDefaultThumbs()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_camera:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->ic_default_thumb:I

    invoke-direct {v1, v2, v3, v3}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->chrismas_thumb:I

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->animal_thumb:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->sealife_thumb:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->halloween_thumb:I

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->warrior_thumb:I

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->emoji_thumb_preview:I

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/tools/beans/ThemeImage;

    sget v2, Lcom/transsion/tools/R$drawable;->sea_thumb:I

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/tools/beans/ThemeImage;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mThumbList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getBackgroundList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mBackgroundList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getColorList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeColor;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mColorList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getFrameList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mFrameList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getThumbList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/tools/beans/ThemeImage;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/CustomThemeViewModel;->mThumbList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
