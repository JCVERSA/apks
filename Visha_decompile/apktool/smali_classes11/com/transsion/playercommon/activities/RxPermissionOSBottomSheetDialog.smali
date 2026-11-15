.class public Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.super Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lxk5;
.implements Lqv4;
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;",
        "Lxk5;",
        "Lqv4;",
        "Lh27$b;"
    }
.end annotation


# static fields
.field public static final INTENT_KEY_PARAM_CALL_FROM:Ljava/lang/String; = "call_from"

.field public static final INTENT_KEY_PARAM_THEME_DARK:Ljava/lang/String; = "theme_dark"

.field public static final PREFIX:Ljava/lang/String; = "AppTheme."

.field protected static final TAG:Ljava/lang/String; = "RxPermissionOSBottomSheetDialog"


# instance fields
.field private final lifecycleSubject:Lzd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzd0;"
        }
    .end annotation
.end field

.field protected mCallFrom:Ljava/lang/String;

.field protected mIsDarkTheme:Z

.field protected mIsDayNight:Z

.field protected permissionDialog:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;-><init>()V

    invoke-static {}, Lzd0;->o0()Lzd0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mCallFrom:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Y(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->c0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic Z(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->e0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->d0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic e0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private fitSystemStatusBar()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mIsDarkTheme:Z

    if-nez p0, :cond_0

    or-int/lit16 p0, v1, 0x2010

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v1, -0x2011

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fitSystemStatusBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "video_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "theme_dark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mIsDayNight:Z

    const-string v1, "call_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->mCallFrom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public bindToLifecycle()Lyk5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lyk5;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    invoke-static {p0}, Lax8;->a(Lmc7;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public bindUntilEvent(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lyk5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/trello/rxlifecycle3/android/ActivityEvent;",
            ")",
            "Lyk5;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    invoke-static {p0, p1}, Lzw8;->c(Lmc7;Ljava/lang/Object;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic bindUntilEvent(Ljava/lang/Object;)Lyk5;
    .locals 0

    .line 1
    check-cast p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindUntilEvent(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lyk5;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic d0(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x83

    :try_start_0
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "RxPermissionOSBottomSheetDialog"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x463

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-static {p0, v2, v2, v2}, Lbx8;->a(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;III)V

    const/4 v0, 0x1

    invoke-static {p0, v0, v2, v2}, Lbx8;->a(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDragSpaceTop()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Lia7;->h(Landroid/content/res/Resources;Landroid/content/Context;)V

    return-object v0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->initView()V

    const-string v0, "RxPermissionOSBottomSheetDialog"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->isFixedHeight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->setFixedHeight(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->isFitWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->fitSystemStatusBar()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->b0()V

    return-void
.end method

.method public isFitWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public lifecycle()Lmc7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/trello/rxlifecycle3/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    invoke-virtual {p0}, Lmc7;->F()Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public loadSkin()I
    .locals 10

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "skin_theme"

    invoke-static {v0, v1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/ThemeData;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$string;->default_skin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppTheme."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "style"

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v3, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading isNotLocalTheme:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", haveLocalThemeMatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "RxPermissionOSBottomSheetDialog"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget-object v2, v0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v8

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_4
    iget v0, v0, Lcom/transsion/dbdata/beans/ThemeData;->darkMode:I

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$attr;->dark_theme:I

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v8

    goto :goto_3

    :cond_7
    const-string v0, "no theme match"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return v2

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x83

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x45d

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onBackPressed()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-static {p0}, Lvha;->v(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->loadSkin()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lt81;->a(Landroid/app/Activity;)V

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/common/R$style;->OSThemeCurve:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/common/R$style;->OSThemeNoCurve:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$style;->OSNULL:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x463

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RxPermissionOSBottomSheetDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x463

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lm27;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->showNotificationPermissionDialog()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->START:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->lifecycleSubject:Lzd0;

    sget-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RxPermissionOSBottomSheetDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestPermissionForAllData(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    const/16 v0, 0x4d6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lkb0;->a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d7

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Llb0;->a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDecorFitsSystemWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showNotificationPermissionDialog()V
    .locals 5

    const-string v0, "RxPermissionOSBottomSheetDialog"

    const-string v1, "showNotificationPermissionDialog "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->dialog_media_notification_permission:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->sniffer_notice_not_open:I

    new-instance v2, Lcx8;

    invoke-direct {v2}, Lcx8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->sniffer_notice_go_setting:I

    new-instance v2, Ldx8;

    invoke-direct {v2, p0}, Ldx8;-><init>(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Lex8;

    invoke-direct {v1}, Lex8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    invoke-static {}, Lm27;->f()V

    invoke-static {}, Lm27;->g()V

    :cond_1
    return-void
.end method
