.class public Lcom/transsion/widgetthemes/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPCOMPAT:I = 0x1

.field public static final GESTURE_ON:I = 0x2

.field public static final HIOS:I = 0x0

.field public static final ITE:I = 0x2

.field private static final KEY_OLED:Ljava/lang/String; = "ro.transsion.lcd.type"

.field public static final METERIAL:I = 0x0

.field private static OLED_SCREEN_STATE:I = 0x0

.field private static final OLED_SCREEN_STATE_NO:I = 0x0

.field private static final OLED_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final OLED_SCREEN_STATE_YES:I = 0x1

.field public static OS_TYPE:Ljava/lang/String; = null

.field public static final PLATFORM_MTK:I = 0x1

.field public static final PLATFORM_SPRD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "widgetslib.Utils"

.field private static final VALUE_OLED:Ljava/lang/String; = "1"

.field private static WATERFALL_SCREEN_STATE:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final WATERFALL_SCREEN_STATE_YES:I = 0x1

.field public static final XOS:I = 0x1

.field public static final mOsType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "xos"

    const-string v1, "itel"

    const-string v2, "hios"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    sput v0, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    const-string v0, "ro.tranos.type"

    invoke-static {v0}, Lcom/transsion/widgetthemes/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetthemes/util/Utils;->OS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelViewShadowStyle(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/widgetsThemes/R$id;->os_list_item_shadow_id:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_0
    return-void
.end method

.method public static executeViewShadowStyle(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsThemes/R$id;->os_list_item_shadow_id:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetsThemes/R$dimen;->os_list_item_shadow_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    sget v0, Lcom/transsion/widgetsThemes/R$color;->os_list_item_shadow_color:I

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_0
    return-void
.end method

.method private static getAppTheme(III)I
    .locals 3

    .line 18
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    .line 20
    :cond_0
    sget-object v1, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p2

    :cond_1
    const/4 p2, 0x1

    .line 21
    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method private static getAppTheme(ZI)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 4
    :cond_0
    sget-object v1, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    .line 5
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios:I

    goto :goto_0

    .line 6
    :cond_1
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_hios:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 7
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios_NoActionBar:I

    goto :goto_0

    .line 8
    :cond_3
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_hios_NoActionBar:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    .line 9
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p0, :cond_6

    if-nez p1, :cond_5

    .line 10
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_xos:I

    goto :goto_0

    .line 11
    :cond_5
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_xos:I

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    .line 12
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_xos_NoActionBar:I

    goto :goto_0

    .line 13
    :cond_7
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_xos_NoActionBar:I

    goto :goto_0

    :cond_8
    if-eqz p0, :cond_a

    if-nez p1, :cond_9

    .line 14
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_itel:I

    goto :goto_0

    .line 15
    :cond_9
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_itel:I

    goto :goto_0

    :cond_a
    if-nez p1, :cond_b

    .line 16
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_itel_NoActionBar:I

    goto :goto_0

    .line 17
    :cond_b
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_itel_NoActionBar:I

    :goto_0
    return p0
.end method

.method public static getOsType()Ljava/lang/String;
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

    const-string v2, "ro.tranos.type"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemProperties Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static isGestureNavigationBarOn(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isOLED()Z
    .locals 4

    sget v0, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "ro.transsion.lcd.type"

    invoke-static {v0}, Lcom/transsion/widgetthemes/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v3, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    return v3

    :cond_0
    sput v2, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    return v2

    :cond_1
    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isRtl()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "waterfall_display_left_edge_size"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    if-lez p0, :cond_1

    sput v3, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    return v3

    :cond_1
    sput v0, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    if-ne v1, v3, :cond_3

    move v0, v3

    :cond_3
    return v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static setAppTheme(Landroid/content/Context;III)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetthemes/util/Utils;->setAppTheme(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetthemes/util/Utils;->setAppTheme(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZZ)V
    .locals 1

    .line 5
    invoke-static {p1, p2, p3}, Lcom/transsion/widgetthemes/util/Utils;->getAppTheme(III)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 7
    instance-of p1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 9
    invoke-static {p0}, Lcom/transsion/widgetthemes/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p2

    .line 10
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isOLED()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 11
    sget p3, Lcom/transsion/widgetsThemes/R$style;->OSThemOled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    if-eqz p2, :cond_2

    .line 12
    sget p2, Lcom/transsion/widgetsThemes/R$style;->OsCurseSupport:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    if-eqz p4, :cond_1

    .line 13
    sget p2, Lcom/transsion/widgetsThemes/R$style;->actionbar_no_force_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 14
    :cond_1
    invoke-static {p0, p1, p4}, Lcom/transsion/widgetthemes/util/Utils;->setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V

    if-eqz p5, :cond_2

    .line 15
    invoke-static {p0}, Lcom/transsion/widgetthemes/util/Utils;->setWindowInset(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/widgetthemes/util/Utils;->getAppTheme(ZI)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private static setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V
    .locals 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-nez p2, :cond_0

    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_0_180:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_0_180_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_1
    if-nez p2, :cond_3

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270_RTL:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270:I

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    :cond_3
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_2
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse_270:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_4
    if-nez p2, :cond_6

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90_RTL:I

    goto :goto_3

    :cond_5
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90:I

    :goto_3
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_4

    :cond_6
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_4
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse_90:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    :goto_5
    return-void
.end method

.method public static setWindowInset(Landroid/content/Context;)V
    .locals 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetthemes/util/Utils$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetthemes/util/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method
