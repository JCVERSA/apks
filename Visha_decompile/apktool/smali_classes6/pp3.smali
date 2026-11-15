.class public abstract Lpp3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Z

.field public static final B:Z

.field public static final C:Z

.field public static final D:Z

.field public static final E:Z

.field public static final F:Z

.field public static final G:Z

.field public static final H:Z

.field public static I:Z

.field public static J:Z

.field public static K:Ljava/lang/String;

.field public static L:Z

.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static final j:Z

.field public static final k:Z

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:Z

.field public static q:Z

.field public static r:I

.field public static s:I

.field public static final t:Z

.field public static final u:Z

.field public static final v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-le v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    sput-boolean v4, Lpp3;->a:Z

    invoke-static {}, Lydc;->e()Z

    move-result v4

    sput-boolean v4, Lpp3;->b:Z

    sput-boolean v4, Lpp3;->c:Z

    const/4 v5, -0x1

    sput v5, Lpp3;->d:I

    sput v5, Lpp3;->e:I

    sput v5, Lpp3;->f:I

    sput v5, Lpp3;->g:I

    sput v5, Lpp3;->h:I

    sput v5, Lpp3;->i:I

    if-le v0, v3, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    sput-boolean v6, Lpp3;->j:Z

    const-string v6, "1"

    if-eqz v4, :cond_3

    if-eqz v4, :cond_2

    const-string v7, "X6739"

    invoke-static {}, Lpp3;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ro.os_app_uninstall_support"

    invoke-static {v7}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v2

    :goto_3
    sput-boolean v7, Lpp3;->k:Z

    sput v5, Lpp3;->l:I

    sput v5, Lpp3;->m:I

    sput v5, Lpp3;->n:I

    sput v5, Lpp3;->o:I

    xor-int/lit8 v7, v4, 0x1

    sput-boolean v7, Lpp3;->p:Z

    xor-int/lit8 v7, v4, 0x1

    sput-boolean v7, Lpp3;->q:Z

    sput v5, Lpp3;->r:I

    sput v5, Lpp3;->s:I

    if-le v0, v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    sput-boolean v3, Lpp3;->t:Z

    invoke-static {}, Lpp3;->k()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "persist.tr_audio.dolby.feature.support"

    invoke-static {v3, v1}, Lmaa;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "ro.dolby.atmos.support"

    invoke-static {v3, v1}, Lmaa;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v3, v1

    goto :goto_6

    :cond_6
    :goto_5
    move v3, v2

    :goto_6
    sput-boolean v3, Lpp3;->u:Z

    const-string v3, "ro.tr_colorspace.p3.feature.support"

    invoke-static {v3, v1}, Lmaa;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v3}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    move v3, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v3, v2

    :goto_8
    sput-boolean v3, Lpp3;->v:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    sput-boolean v3, Lpp3;->w:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->x:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->y:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->z:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->A:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->B:Z

    sput-boolean v4, Lpp3;->C:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->D:Z

    invoke-static {}, Lydc;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lpp3;->E:Z

    xor-int/lit8 v3, v4, 0x1

    sput-boolean v3, Lpp3;->F:Z

    const/16 v3, 0x22

    if-lt v0, v3, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    sput-boolean v0, Lpp3;->G:Z

    invoke-static {}, Lpp3;->m()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ro.os_hide_gesture_navigation_bar_support"

    invoke-static {v0}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    goto :goto_b

    :cond_b
    :goto_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lpp3;->H:Z

    sput-boolean v2, Lpp3;->I:Z

    sput-boolean v1, Lpp3;->J:Z

    sput-boolean v2, Lpp3;->L:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lga2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.tranos.version"

    invoke-static {v0}, Lpp3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.os_product.version"

    invoke-static {v0}, Lpp3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    const-string v0, "FeatureUtils"

    sget-object v1, Lpp3;->K:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lpp3;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vlc"

    sput-object v1, Lpp3;->K:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lpp3;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bsp"

    sput-object v1, Lpp3;->K:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "system"

    sput-object v1, Lpp3;->K:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayerKernelName Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayerKernelName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lpp3;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lpp3;->K:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vlc"

    return-object v0

    :cond_0
    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bsp"

    return-object v0

    :cond_1
    const-string v0, "system"

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lpp3;->J:Z

    if-nez v0, :cond_0

    const-string v0, "video_short_list_mode_open"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lpp3;->I:Z

    sput-boolean v1, Lpp3;->J:Z

    :cond_0
    sget-boolean p0, Lpp3;->I:Z

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemProperties Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FeatureUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 5

    sget v0, Lpp3;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v0, "getWaterfallLeftEdgeSize"

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "waterfall_display_left_edge_size"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lpp3;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaterfallLeftEdgeSize Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget p0, Lpp3;->l:I

    return p0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 5

    sget v0, Lpp3;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v0, "getWaterfallRightEdgeSize"

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "waterfall_display_right_edge_size"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lpp3;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaterfallRightEdgeSize Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget p0, Lpp3;->m:I

    return p0
.end method

.method public static i()Z
    .locals 2

    invoke-static {}, Lpp3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static k()Z
    .locals 2

    const-string v0, "ro.tr_audio.sound_effect.type"

    invoke-static {v0}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dolby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 4

    sget v0, Lpp3;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "ro.os_flip_screen_support"

    invoke-static {v0, v2}, Lmaa;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lpp3;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFlipScreenSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lpp3;->e:I

    if-ne v3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lpp3;->e:I

    if-ne v3, v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static m()Z
    .locals 4

    sget v0, Lpp3;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "ro.os_foldable_screen_support"

    invoke-static {v0, v2}, Lmaa;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lpp3;->d:I

    if-eq v0, v3, :cond_0

    const-string v0, "ro.os_flip_screen_support"

    invoke-static {v0, v2}, Lmaa;->b(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lpp3;->d:I

    sput v0, Lpp3;->e:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFoldableScreenSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lpp3;->d:I

    if-ne v3, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lpp3;->d:I

    if-ne v3, v0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public static n()Z
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.vishaplayerhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o()Z
    .locals 4

    sget v0, Lpp3;->n:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "ro.tr_xhide.quick_hide.feature.support"

    invoke-static {v0}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v3, Lpp3;->n:I

    sput v3, Lpp3;->o:I

    return v3

    :cond_0
    sput v2, Lpp3;->o:I

    const-string v0, "ro.os_quick_hide_support"

    invoke-static {v0}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v3, Lpp3;->n:I

    return v3

    :cond_1
    sput v2, Lpp3;->n:I

    return v2

    :cond_2
    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public static p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static r()Z
    .locals 4

    sget v0, Lpp3;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    sput v0, Lpp3;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportDualSubtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lpp3;->i:I

    if-ne v3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lpp3;->i:I

    if-ne v3, v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static s()Z
    .locals 4

    sget v0, Lpp3;->s:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lpp3;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lpp3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput v0, Lpp3;->s:I

    :cond_2
    sget v0, Lpp3;->s:I

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public static t()Z
    .locals 4

    sget v0, Lpp3;->g:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput v0, Lpp3;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportSubtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lpp3;->g:I

    if-ne v3, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget v0, Lpp3;->g:I

    if-ne v3, v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static u()Z
    .locals 2

    sget v0, Lpp3;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput v0, Lpp3;->r:I

    :cond_0
    sget v0, Lpp3;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static v()Z
    .locals 2

    sget v0, Lpp3;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lpp3;->o()Z

    :cond_0
    sget v0, Lpp3;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lolb;->w0(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lpp3;->h:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sput v2, Lpp3;->h:I

    goto :goto_0

    :cond_0
    sput v3, Lpp3;->h:I

    :cond_1
    :goto_0
    sget p0, Lpp3;->h:I

    if-ne v3, p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static z(Z)V
    .locals 2

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSupportBspPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lpp3;->f:I

    return-void
.end method
