.class public abstract Lzg9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:J = 0x0L

.field public static d:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lzg9;->r(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lzg9;->s(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;I)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lzg9;->t(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompat;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lge;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.magicmovie.START_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v1, Lpp3;->b:Z

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.magicmovie.activity.TRSplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.transsion.magicmovie.activity.ShortcutActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "short_cut_id"

    invoke-direct {v2, v3, v4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v3, Lpp3;->c:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/transsion/magicvideo/R$string;->visha_Player_pre:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/transsion/magicvideo/R$string;->visha_Player:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$drawable;->ic_logo:I

    invoke-static {p0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "shortcut_dialog_show_times"

    sput p1, Lzg9;->a:I

    :try_start_0
    invoke-static {p0}, Lzg9;->d(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/transsion/magicvideo/receiver/ShortcutReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lzg9;->b:I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    sget v1, Lzg9;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    sget p0, Lzg9;->b:I

    invoke-static {p1, p0}, Lb16;->b(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_ShortCutUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v0, p0, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p4

    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/transsion/magicvideo/receiver/OttVideoShortCutReceiver;

    invoke-direct {p2, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p4, 0xc000000

    const/4 p5, 0x0

    invoke-static {p0, p5, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addOttSerialShortCut result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_ShortCutUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v0, p0, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p3

    invoke-static {p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/transsion/magicvideo/receiver/OttVideoShortCutReceiver;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0xc000000

    const/4 p4, 0x0

    invoke-static {p0, p4, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-wide p0, Lzg9;->c:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "videoname"

    sget-object p2, Lzg9;->d:Ljava/lang/String;

    const-string p3, "vd_ott_detail_addtohome_show"

    const-string p4, "videoID"

    invoke-static {p3, p4, p0, p1, p2}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;J)V
    .locals 10

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCoverY()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lzg9;->k(Landroid/content/Context;)I

    move-result v8

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v9, Lzg9$a;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lzg9$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V

    invoke-virtual {v0, v9}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v8, v8}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method

.method public static i(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCoverX()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lzg9;->k(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lzg9$b;

    invoke-direct {v2, p0, p1, p2, v1}, Lzg9$b;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;I)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method

.method public static k(Landroid/content/Context;)I
    .locals 2

    const-class v0, Landroid/app/ActivityManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isVk()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string p1, "is_youtube"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_vk"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->isVk()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "sid"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string p1, "vk_title_name"

    goto :goto_1

    :cond_1
    const-string p1, "youtube_name"

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string p1, "vk_source_image"

    goto :goto_2

    :cond_2
    const-string p1, "youtube_channel_cover"

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getChannelCover()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string p1, "vk_cover_image"

    goto :goto_3

    :cond_3
    const-string p1, "youtube_cover"

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCoverX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string p1, "vk_source_name"

    goto :goto_4

    :cond_4
    const-string p1, "youtube_channel_name"

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const-string p1, "vk_id"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vk_bean"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVkBean()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "rel"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "router_data"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->short_cut_offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->disableShortcuts(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 8

    sget-boolean v0, Lpp3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "launcher_show_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xf731400

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "launcher_show_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "launcher_count_day_time"

    invoke-virtual {v4, v7, v5, v6}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    const-string v0, "visha_ShortCutUtils"

    const-string v4, "start create launcher icon dialog."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v5}, Lzg9;->e(Landroid/content/Context;I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    add-int/2addr v0, v5

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v7, v0, v1}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static q(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "vd_ott_detail_addtohome_offline_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/magicvideo/R$string;->video_is_offline_notice:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->got_it:I

    new-instance v2, Lzg9$c;

    invoke-direct {v2, p0}, Lzg9$c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public static r(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    sub-int v3, v0, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p3

    div-int/lit8 v2, v1, 0x2

    :goto_1
    invoke-static {p1, v3, v2, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_logo:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    int-to-float v1, p2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, p2, v1

    sub-int v1, p3, v1

    invoke-virtual {p0, v2, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static s(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;I)V
    .locals 6

    invoke-static {p0, p3, p4}, Lzg9;->l(Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    const/16 v0, 0xa

    const/4 v2, 0x0

    const/16 v3, 0x19

    if-le p5, v3, :cond_0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, p5

    move-object v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    if-le p5, v0, :cond_1

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    move-object v5, p3

    move-object v4, p5

    goto :goto_0

    :cond_1
    move-object v4, p3

    move-object v5, v4

    :goto_0
    sput-object p3, Lzg9;->d:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lzg9;->f(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lzg9;->g(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static t(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/Class;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;JI)V
    .locals 6

    new-instance p7, Landroid/content/Intent;

    invoke-direct {p7, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.VIEW"

    invoke-virtual {p7, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoId()J

    move-result-wide v0

    const-string v2, "vid"

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "serid"

    invoke-virtual {p3, v0, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p5

    invoke-virtual {p5}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSourceId()Ljava/lang/String;

    move-result-object p5

    const-string p6, "sid"

    invoke-virtual {p3, p6, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "rel"

    const/4 p6, 0x0

    invoke-virtual {p3, p5, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p5, "router_data"

    invoke-virtual {p7, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    const/16 v0, 0xa

    const/16 v1, 0x19

    if-le p5, v1, :cond_0

    invoke-virtual {p3, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    move-object v5, p6

    :goto_0
    move-object p6, p5

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    if-le p5, v0, :cond_1

    invoke-virtual {p3, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    move-object v5, p3

    goto :goto_0

    :cond_1
    move-object p6, p3

    move-object v5, p6

    :goto_1
    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getVideoId()J

    move-result-wide p4

    sput-wide p4, Lzg9;->c:J

    sput-object p3, Lzg9;->d:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-static {p4, p5}, Lzg9;->i(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p7

    move v2, p2

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lzg9;->f(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p4, p5}, Lzg9;->i(J)Ljava/lang/String;

    move-result-object p5

    move-object p2, p0

    move-object p3, p7

    move-object p4, p1

    move-object p7, v5

    invoke-static/range {p2 .. p7}, Lzg9;->g(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
