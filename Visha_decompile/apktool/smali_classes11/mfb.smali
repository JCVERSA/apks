.class public Lmfb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmfb$d;
    }
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Lmfb$d;

.field public e:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmfb$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmfb;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lmfb;->d:Lmfb$d;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmfb;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmfb$d;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lmfb;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lmfb;->d:Lmfb$d;

    .line 8
    iput-boolean p3, p0, Lmfb;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmfb;->b:Landroid/content/Context;

    .line 11
    iput-boolean p2, p0, Lmfb;->c:Z

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lmfb;->h()V

    return-void
.end method

.method public static bridge synthetic b(Lmfb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmfb;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lmfb;)Z
    .locals 0

    iget-boolean p0, p0, Lmfb;->c:Z

    return p0
.end method

.method public static bridge synthetic d(Lmfb;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lmfb;->a:Landroid/net/Uri;

    return-void
.end method

.method public static bridge synthetic e(Lmfb;)V
    .locals 0

    invoke-virtual {p0}, Lmfb;->o()V

    return-void
.end method

.method public static bridge synthetic f(Lmfb;)V
    .locals 0

    invoke-virtual {p0}, Lmfb;->q()V

    return-void
.end method

.method public static g()V
    .locals 1

    new-instance v0, Lkfb;

    invoke-direct {v0}, Lkfb;-><init>()V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "VishaPlayer/images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VishaCropImage.png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_4
    :goto_2
    return-void

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupLeakedCropTempImages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcropUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static n()V
    .locals 0

    invoke-static {}, Lv34;->i()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    iget-object v0, p0, Lmfb;->e:Ljava/io/File;

    const/4 v1, 0x0

    iput-object v1, p0, Lmfb;->e:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Llfb;

    invoke-direct {p0, v0}, Llfb;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(I[I)V
    .locals 1

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p2, p2, v0

    if-nez p2, :cond_0

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lmfb;->o()V

    :cond_0
    return-void
.end method

.method public k(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 p2, 0x45

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lmfb;->a:Landroid/net/Uri;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lmfb;->p(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmfb;->a:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lmfb;->p(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/yalantis/ucrop/a;->c(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p3}, Lcom/yalantis/ucrop/a;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lmfb;->a:Landroid/net/Uri;

    iget-object p3, p0, Lmfb;->d:Lmfb$d;

    if-eqz p3, :cond_3

    invoke-interface {p3, p1, p2}, Lmfb$d;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    :cond_3
    iget-object p1, p0, Lmfb;->e:Ljava/io/File;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmfb;->i()V

    goto :goto_0

    :cond_4
    const/16 p1, 0x60

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$string;->crop_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lmfb;->e:Ljava/io/File;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmfb;->i()V

    :cond_6
    :goto_0
    return-void
.end method

.method public m()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$array;->picture_chooser:I

    new-instance v2, Lmfb$b;

    invoke-direct {v2, p0}, Lmfb$b;-><init>(Lmfb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lmfb$a;

    invoke-direct {v2, p0}, Lmfb$a;-><init>(Lmfb;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmfb;->b:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "VishaPlayer/images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "VishaCropImage.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lmfb;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lmfb;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lmfb;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmfb$c;

    invoke-direct {v3, p0}, Lmfb$c;-><init>(Lmfb;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_1
    return-void
.end method

.method public p(Landroid/net/Uri;)V
    .locals 7

    iput-object p1, p0, Lmfb;->a:Landroid/net/Uri;

    iget-boolean v0, p0, Lmfb;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->custom_theme_crop_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lmfb;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$dimen;->custom_theme_crop_thumb_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    const/high16 v2, 0x44480000    # 800.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :goto_1
    iget-boolean v2, p0, Lmfb;->c:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lmfb;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x358

    const/16 v1, 0x217

    goto :goto_2

    :cond_2
    const-string v2, "ro.os_foldable_screen_support"

    invoke-static {v2}, Lmaa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    const/high16 v1, 0x43d90000    # 434.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    const v2, 0x43bc8000    # 377.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    :cond_3
    :goto_2
    new-instance v2, Lcom/yalantis/ucrop/a$a;

    invoke-direct {v2}, Lcom/yalantis/ucrop/a$a;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3}, Lcom/yalantis/ucrop/a$a;->c(Landroid/graphics/Bitmap$CompressFormat;)V

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/yalantis/ucrop/a$a;->d(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yalantis/ucrop/a$a;->f(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v3}, Lcom/yalantis/ucrop/a$a;->b(III)V

    invoke-virtual {v2, v4}, Lcom/yalantis/ucrop/a$a;->g(Z)V

    invoke-virtual {v2, v4}, Lcom/yalantis/ucrop/a$a;->h(Z)V

    iget-object v4, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$color;->ucrop_color_crop_frame:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/yalantis/ucrop/a$a;->e(I)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "VishaCropImage.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/yalantis/ucrop/a;->d(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Lcom/yalantis/ucrop/a;->g(FF)Lcom/yalantis/ucrop/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/a;->i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    iget-boolean v2, p0, Lmfb;->c:Z

    if-nez v2, :cond_4

    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x21c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lmfb;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/yalantis/ucrop/a;->h(II)Lcom/yalantis/ucrop/a;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/yalantis/ucrop/a;->h(II)Lcom/yalantis/ucrop/a;

    :goto_3
    iget-boolean v0, p0, Lmfb;->c:Z

    xor-int/2addr v0, v3

    const-string v1, "skin_diy_edit_upload_clip_show"

    invoke-static {v1, v0}, Ld16;->f(Ljava/lang/String;I)V

    iget-object v0, p0, Lmfb;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lmfb;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final q()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmfb;->b:Landroid/content/Context;

    const-string v2, "com.gallery20"

    invoke-static {v1, v2}, Lmfb;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lmfb;->n()V

    iget-object p0, p0, Lmfb;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGallery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UcropUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
