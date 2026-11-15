.class public final Lia7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lia7$a;
    }
.end annotation


# static fields
.field public static final a:Lia7;

.field public static final b:Z

.field public static c:F

.field public static final d:F

.field public static e:F

.field public static final f:Lia7$a;

.field public static g:Z

.field public static h:Ljava/lang/Class;

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lia7;

    invoke-direct {v0}, Lia7;-><init>()V

    sput-object v0, Lia7;->a:Lia7;

    const-string v1, "ro.tran.display.resolution.switch.support"

    invoke-static {v1}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.tr_display.resolution.switch.support"

    invoke-static {v1}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lia7;->b:Z

    invoke-virtual {v0}, Lia7;->e()F

    move-result v0

    sput v0, Lia7;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lia7;->e:F

    new-instance v0, Lia7$a;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lia7$a;-><init>(FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lia7;->f:Lia7$a;

    if-eqz v1, :cond_3

    const-string v0, "com.transsion.hubsdk.hardware.display.TranDisplayManagerGlobal"

    invoke-static {v0}, Lyj1;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lia7;->h:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDensityDpi"

    invoke-static {v0, v2, v1}, Lyj1;->k(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lia7;->i:Ljava/lang/reflect/Method;

    sget-object v0, Lia7;->h:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    sput-object v1, Lia7;->j:Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    sget v0, Lia7;->d:F

    return v0
.end method

.method public static final f(Landroid/content/Context;ZI)V
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lia7;->a:Lia7;

    invoke-virtual {v0, p0, p2}, Lia7;->b(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lia7;->g:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    sput v3, Lia7;->c:F

    sget-boolean v3, Lia7;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lia7;->c()F

    move-result v4

    goto :goto_0

    :cond_1
    sget v4, Lia7;->d:F

    :goto_0
    sget v5, Lia7;->c:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCustomDensity: before density = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " scaledDensity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " baseWidthDp = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " IS_DISPLAY_RESOLUTION = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ScreenDensityAdapter"

    invoke-static {v5, v3}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    div-float v3, v2, v4

    invoke-virtual {v0, p0}, Lia7;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float p2, p2

    div-float/2addr v0, p2

    div-float p2, v0, v2

    sput p2, Lia7;->e:F

    sget p2, Lia7;->c:F

    mul-float/2addr p2, v0

    const/16 v2, 0xa0

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iput v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput p2, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v7, Lia7;->f:Lia7$a;

    invoke-virtual {v7, v0}, Lia7$a;->setDensity(F)V

    iget v8, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v7, v8}, Lia7$a;->setScaledDensity(F)V

    iget v8, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v8}, Lia7$a;->setDensityDpi(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v6

    float-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v7, v6}, Lia7$a;->setScreenWidthDp(I)V

    iget v6, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v7, v6}, Lia7$a;->setScreenHeightDp(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_2
    sget p0, Lia7;->c:F

    sget p1, Lia7;->e:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCustomDensity: apply targetDensity = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " targetScaledDensity = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " targetDensityDpi = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sFontScale = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " BaseDensity = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " cusScaleFactor = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " glScaleRatio = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 5

    const-string v0, "resources"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-boolean v1, Lia7;->g:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v2, Lia7;->f:Lia7$a;

    invoke-virtual {v2}, Lia7$a;->getDensityDpi()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lia7$a;->getDensityDpi()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updResource: CONFIG.densityDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenDensityAdapter"

    invoke-static {v3, v1}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lia7$a;->getDensity()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Lia7$a;->getDensityDpi()I

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2}, Lia7$a;->getScaledDensity()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v2}, Lia7$a;->getScreenWidthDp()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2}, Lia7$a;->getScreenHeightDp()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eq p0, p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "context.applicationContext.resources"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2}, Lia7$a;->getDensity()F

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Lia7$a;->getDensityDpi()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2}, Lia7$a;->getScaledDensity()F

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v2}, Lia7$a;->getScreenWidthDp()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2}, Lia7$a;->getScreenHeightDp()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_0
    return-void
.end method

.method public static final setCustomDensity(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x168

    invoke-static {p0, v0, v1}, Lia7;->f(Landroid/content/Context;ZI)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;I)Z
    .locals 3

    sget-boolean v0, Lolb;->F:Z

    const/4 v1, 0x0

    const-string v2, "ScreenDensityAdapter"

    if-nez v0, :cond_0

    const-string p0, "setCustomDensity: isn\'t tran devices, don\'t need adapt."

    invoke-static {v2, p0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-boolean v0, Lolb;->v:Z

    if-eqz v0, :cond_1

    const-string p0, "setCustomDensity: isFlipScreen, don\'t need adapt."

    invoke-static {v2, p0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-boolean v0, Lolb;->w:Z

    if-eqz v0, :cond_2

    const-string p0, "setCustomDensity: isFoldScreen, don\'t need adapt."

    invoke-static {v2, p0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    sget-boolean v0, Lia7;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lia7;->c()F

    move-result v0

    goto :goto_0

    :cond_3
    sget v0, Lia7;->d:F

    :goto_0
    invoke-virtual {p0, p1, v0}, Lia7;->g(Landroid/content/Context;F)I

    move-result p0

    const/16 p1, 0x258

    if-le p0, p1, :cond_4

    const-string p0, "setCustomDensity: is large screen, don\'t need adapt."

    invoke-static {v2, p0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    if-ne p0, p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setCustomDensity: baseWidthDp == realWidthDp, don\'t need adapt. baseDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final c()F
    .locals 3

    const/high16 p0, 0x40500000    # 3.25f

    :try_start_0
    sget-object v0, Lia7;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lia7;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p0, p0

    const/16 v0, 0xa0

    int-to-float v0, v0

    div-float/2addr p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayResolutionBaseDensity Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDensityAdapter"

    invoke-static {v1, v0}, Lbq5;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 2

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final e()F
    .locals 3

    const-string p0, "ScreenDensityAdapter"

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

    const-string v2, "ro.sf.lcd_density"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperties Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbq5;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemBaseDensity: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final g(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0, p1}, Lia7;->d(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method public final getGlScaleRatio()F
    .locals 0

    sget p0, Lia7;->e:F

    return p0
.end method

.method public final setGlScaleRatio(F)V
    .locals 0

    sput p1, Lia7;->e:F

    return-void
.end method
