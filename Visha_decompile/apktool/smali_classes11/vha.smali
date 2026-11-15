.class public abstract Lvha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/ArrayList;

.field public static b:Ljava/util/ArrayList;

.field public static c:Ljava/util/ArrayList;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    const-string v9, "Gradient"

    const-string v10, "Household"

    const-string v1, "Purple"

    const-string v2, "Burning"

    const-string v3, "Rhythm"

    const-string v4, "Starry"

    const-string v5, "Feather"

    const-string v6, "Metal"

    const-string v7, "Sphere"

    const-string v8, "Jellyfish"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lvha;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "Metal"

    const-string v6, "Rock"

    const-string v1, "Purple"

    const-string v2, "Burning"

    const-string v3, "Rhythm"

    const-string v4, "Feather"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lvha;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Burning"

    const-string v2, "Rhythm"

    const-string v3, "Purple"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lvha;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lvha;->d:Ljava/lang/String;

    sput-object v0, Lvha;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvha;->e:Landroid/graphics/Bitmap;

    sget-object v1, Lvha;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object p0, Lvha;->d:Ljava/lang/String;

    sput-object v0, Lvha;->e:Landroid/graphics/Bitmap;

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;
    .locals 2

    invoke-static {p0}, Lvha;->d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lvha;->q(Lcom/transsion/dbdata/beans/ThemeData;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;
    .locals 1

    const-string v0, "skin_theme"

    invoke-static {p0, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/ThemeData;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p0}, Lvha;->d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Lvha;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_2
    invoke-static {p0, v2}, Lvha;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/util/List;
    .locals 17

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v6, Lcom/transsion/common/R$drawable;->icon_skin_purple:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$string;->local_music_skin_purple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->music_color_purple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/4 v8, -0x1

    move-object v2, v9

    move v3, v6

    move v4, v6

    invoke-direct/range {v2 .. v8}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v14, Lcom/transsion/common/R$drawable;->icon_skin_burning:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/common/R$string;->local_music_skin_burning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/common/R$color;->music_color_burning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const/16 v16, 0x0

    move-object v10, v2

    move v11, v14

    move v12, v14

    invoke-direct/range {v10 .. v16}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v7, Lcom/transsion/common/R$drawable;->icon_skin_rhythm:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/common/R$string;->local_music_skin_rhythm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/common/R$color;->music_color_rhythm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v3, v2

    move v4, v7

    move v5, v7

    invoke-direct/range {v3 .. v9}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music_theme_new_tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/transsion/dbdata/beans/ThemeData;I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/ThemeData;->tabPath:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    sget p0, Lcom/transsion/common/R$drawable;->reindeer:I

    sget v0, Lcom/transsion/common/R$drawable;->santa_claus:I

    sget v1, Lcom/transsion/common/R$drawable;->snowman:I

    sget v2, Lcom/transsion/common/R$drawable;->christmas_tree:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne v0, p0, :cond_2

    sget p0, Lcom/transsion/common/R$drawable;->chimp:I

    sget v0, Lcom/transsion/common/R$drawable;->zebra:I

    sget v1, Lcom/transsion/common/R$drawable;->elephant:I

    sget v2, Lcom/transsion/common/R$drawable;->buffalo:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x4

    if-ne v0, p0, :cond_3

    sget p0, Lcom/transsion/common/R$drawable;->starfish:I

    sget v0, Lcom/transsion/common/R$drawable;->shark:I

    sget v1, Lcom/transsion/common/R$drawable;->turtle:I

    sget v2, Lcom/transsion/common/R$drawable;->seashells:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x5

    if-ne v0, p0, :cond_4

    sget p0, Lcom/transsion/common/R$drawable;->pumpkin:I

    sget v0, Lcom/transsion/common/R$drawable;->winebottle:I

    sget v1, Lcom/transsion/common/R$drawable;->cat:I

    sget v2, Lcom/transsion/common/R$drawable;->skull:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x6

    if-ne v0, p0, :cond_5

    sget p0, Lcom/transsion/common/R$drawable;->castle:I

    sget v0, Lcom/transsion/common/R$drawable;->princess:I

    sget v1, Lcom/transsion/common/R$drawable;->warrior:I

    sget v2, Lcom/transsion/common/R$drawable;->dragon:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x7

    if-ne v0, p0, :cond_6

    sget p0, Lcom/transsion/common/R$drawable;->emoji_1:I

    sget v0, Lcom/transsion/common/R$drawable;->emoji_2:I

    sget v1, Lcom/transsion/common/R$drawable;->emoji_3:I

    sget v2, Lcom/transsion/common/R$drawable;->emoji_4:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    sget p0, Lcom/transsion/common/R$drawable;->fish_1:I

    sget v0, Lcom/transsion/common/R$drawable;->fish_2:I

    sget v1, Lcom/transsion/common/R$drawable;->fish_3:I

    sget v2, Lcom/transsion/common/R$drawable;->fish_4:I

    filled-new-array {p0, v0, v1, v2}, [I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lvha;->d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lw6c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-lt p0, p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    invoke-static {v0, p0}, Lvha;->h(Lcom/transsion/dbdata/beans/ThemeData;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(ILandroid/content/Context;)I
    .locals 4

    sget-object v0, Lw6c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    add-int/lit8 p1, p0, -0x1

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_tab_video:I

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_tab_music:I

    sget v2, Lcom/transsion/playercommon/R$drawable;->ic_tab_download:I

    sget v3, Lcom/transsion/playercommon/R$drawable;->ic_tab_tools:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    if-lez p0, :cond_1

    const/4 v1, 0x4

    if-ge p0, v1, :cond_1

    aget p0, v0, p1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/transsion/common/R$drawable;->bell_thumb:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget p1, Lcom/transsion/common/R$drawable;->giraffe_thumb:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    sget p1, Lcom/transsion/common/R$drawable;->globefish_thumb:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    sget p1, Lcom/transsion/common/R$drawable;->candy:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    sget p1, Lcom/transsion/common/R$drawable;->sword_shield:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    sget p1, Lcom/transsion/common/R$drawable;->emoji_thumb:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    sget p1, Lcom/transsion/common/R$drawable;->fish_thumb:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(ILandroid/content/Context;)I
    .locals 3

    sget-object v0, Lw6c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_tab_video_model:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_tab_music_model:I

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_tab_download_model:I

    sget v2, Lcom/transsion/playercommon/R$drawable;->ic_tab_tools_model:I

    filled-new-array {p1, v0, v1, v2}, [I

    move-result-object p1

    aget p0, p1, p0

    return p0
.end method

.method public static m(Landroid/content/Context;Lcom/transsion/dbdata/beans/ThemeData;I)I
    .locals 5

    const-string v0, "style"

    const/4 v1, -0x1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppTheme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p1, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    filled-new-array {p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_3

    return v1

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string p1, "Error getting theme boolean attribute"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :goto_2
    const-string p1, "Theme resource not found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return v1
.end method

.method public static n(Landroid/content/Context;Lcom/transsion/dbdata/beans/ThemeData;I)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTheme."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    if-nez v1, :cond_1

    iget-object v3, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v2, v1, p0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    filled-new-array {p2}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static p(I)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    sget p0, Lcom/transsion/common/R$drawable;->reindeer:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->santa_claus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->snowman:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->christmas_tree:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    sget p0, Lcom/transsion/common/R$drawable;->chimp:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->zebra:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->elephant:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->buffalo:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    sget p0, Lcom/transsion/common/R$drawable;->starfish:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->shark:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->turtle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->seashells:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    sget p0, Lcom/transsion/common/R$drawable;->pumpkin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->winebottle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->cat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->skull:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    sget p0, Lcom/transsion/common/R$drawable;->castle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->princess:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->warrior:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->dragon:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    const/4 v1, 0x7

    if-ne p0, v1, :cond_5

    sget p0, Lcom/transsion/common/R$drawable;->emoji_1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->emoji_2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->emoji_3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->emoji_4:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    const/16 v1, 0x8

    if-ne p0, v1, :cond_6

    sget p0, Lcom/transsion/common/R$drawable;->fish_1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->fish_2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->fish_3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p0, Lcom/transsion/common/R$drawable;->fish_4:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lcom/transsion/dbdata/beans/ThemeData;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-static {p0}, Lvha;->r(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lvha;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lvha;->d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppTheme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, v0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static t(Lcom/transsion/dbdata/beans/ThemeData;)Z
    .locals 2

    invoke-static {p0}, Lvha;->q(Lcom/transsion/dbdata/beans/ThemeData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    sget-object v0, Lvha;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static u(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lvha;->w(Landroid/content/Context;)V

    sget v0, Lcom/transsion/common/R$style;->AppTheme_hios:I

    sget v1, Lcom/transsion/common/R$style;->AppTheme_xos:I

    sget v2, Lcom/transsion/common/R$style;->AppTheme_itel:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lolb;->J0(Landroid/content/Context;IIIZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lcom/transsion/common/R$style;->AppThemeIndependent:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lvha;->w(Landroid/content/Context;)V

    sget v0, Lcom/transsion/common/R$style;->AppThemeSheet_hios:I

    sget v1, Lcom/transsion/common/R$style;->AppThemeSheet_xos:I

    sget v2, Lcom/transsion/common/R$style;->AppThemeSheet_itel:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lolb;->J0(Landroid/content/Context;IIIZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lcom/transsion/common/R$style;->AppThemeIndependentSheet:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lpp3;->G:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lia7;->setCustomDensity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lvha;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lvha;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
