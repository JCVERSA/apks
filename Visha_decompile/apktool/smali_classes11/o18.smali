.class public Lo18;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo18$b;
    }
.end annotation


# static fields
.field public static c:I = 0x4d2

.field public static d:I = 0x4d8

.field public static e:Landroid/app/PictureInPictureParams$Builder;

.field public static f:Ljava/lang/ref/WeakReference;

.field public static g:Ljava/lang/ref/WeakReference;

.field public static h:I


# instance fields
.field public a:Landroid/view/SurfaceView;

.field public b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo18;->m(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lo18;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android:picture_in_picture"

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 0

    invoke-static {}, Lo18;->g()V

    return-void
.end method

.method public static g()V
    .locals 2

    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    const/4 v0, 0x0

    sput v0, Lo18;->h:I

    const-string v0, "PipInPipView"

    const-string v1, "clearSystemInPip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_2

    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_2

    :cond_1
    invoke-static {}, Lo18;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static i()Z
    .locals 5

    sget v0, Lo18;->h:I

    const/4 v1, 0x2

    const-string v2, "PipInPipView"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitOttSystemPip skip, owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lo18;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    sput v3, Lo18;->h:I

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    invoke-static {}, Lo18;->g()V

    return v3

    :cond_2
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lo18;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitOttSystemPip error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lo18;->g()V

    return v3
.end method

.method public static j(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v1, Lo18;->d:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static k()I
    .locals 1

    sget v0, Lo18;->h:I

    return v0
.end method

.method public static synthetic m(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lo18;->j(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static p(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static q(Landroid/app/Activity;I)V
    .locals 2

    sget-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo18;->f:Ljava/lang/ref/WeakReference;

    sput p1, Lo18;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsSystemInPip owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", activity="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PipInPipView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static t(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->enable_system_pip_mode_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->allow:I

    new-instance v2, Lm18;

    invoke-direct {v2, p0}, Lm18;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, Ln18;

    invoke-direct {v1}, Ln18;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->enable_pip_mode_title:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method


# virtual methods
.method public final l(II)Landroid/util/Rational;
    .locals 4

    if-nez p2, :cond_0

    new-instance p0, Landroid/util/Rational;

    const/16 p1, 0x10

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    return-object p0

    :cond_0
    mul-int/lit8 p0, p1, 0x64

    div-int/2addr p0, p2

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoRate origin_rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipInPipView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, p0

    const-wide v2, 0x3fdac73abc947065L    # 0.41841

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const p0, 0x3ed639d6    # 0.41841f

    int-to-float p2, p1

    div-float/2addr p2, p0

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    const-wide v2, 0x40031eb851eb851fL    # 2.39

    cmpl-double p0, v0, v2

    if-lez p0, :cond_2

    const p0, 0x4018f5c3    # 2.39f

    int-to-float p1, p2

    mul-float/2addr p1, p0

    float-to-int p1, p1

    :cond_2
    :goto_0
    new-instance p0, Landroid/util/Rational;

    invoke-direct {p0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    return-object p0
.end method

.method public o(Landroid/app/Activity;Lo18$b;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerController controller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipInPipView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo18;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string p0, "registerController return"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerController "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lo18$a;

    invoke-direct {v0, p0, p2}, Lo18$a;-><init>(Lo18;Lo18$b;)V

    iput-object v0, p0, Lo18;->b:Landroid/content/BroadcastReceiver;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "media_control"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, v0, p0, p2}, Lxb;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)Landroid/content/Intent;

    return-void
.end method

.method public r(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lo18;->s(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V

    return-void
.end method

.method public s(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V
    .locals 14

    move-object v0, p1

    move/from16 v1, p4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v3}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    sput-object v3, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    :cond_0
    move-object v3, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual {p0, v4, v5}, Lo18;->l(II)Landroid/util/Rational;

    move-result-object v3

    sget-object v4, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v4, v3}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPipParams controlType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rational: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PipInPipView"

    filled-new-array {v6, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/high16 v7, 0xc000000

    const-string v8, "control_type"

    const-string v9, "media_control"

    const-string v10, ""

    if-eqz p10, :cond_1

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-static {p1, v5, v11, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v12, Landroid/app/RemoteAction;

    sget v13, Lcom/transsion/playercommon/R$drawable;->ic_floating_previous:I

    invoke-static {p1, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-direct {v12, v13, v10, v10, v11}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move/from16 v11, p8

    invoke-virtual {v12, v11}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move/from16 v11, p5

    invoke-static {p1, v11, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v11, Landroid/app/RemoteAction;

    invoke-static/range {p1 .. p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-direct {v11, v12, v13, v13, v1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroid/app/RemoteAction;

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_floating_next:I

    invoke-static {p1, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-direct {v3, v5, v10, v10, v1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move/from16 v1, p9

    invoke-virtual {v3, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v1, v4}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    const/16 v1, 0x1f

    if-lt v2, v1, :cond_3

    sget-object v1, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ll18;->a(Landroid/app/PictureInPictureParams$Builder;Z)Landroid/app/PictureInPictureParams$Builder;

    :cond_3
    :try_start_0
    sget-object v1, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePictureInPictureActions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public u(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v5, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    if-nez v5, :cond_0

    new-instance v5, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v5}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    sput-object v5, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    :cond_0
    sget-object v5, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual {v0, v6, v7}, Lo18;->l(II)Landroid/util/Rational;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showPipView controlType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PipInPipView"

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const-string v6, ""

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/high16 v10, 0xc000000

    const-string v11, "control_type"

    const-string v12, "media_control"

    if-eqz p10, :cond_1

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-static {v1, v9, v13, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v14, Landroid/app/RemoteAction;

    sget v15, Lcom/transsion/playercommon/R$drawable;->ic_floating_previous:I

    invoke-static {v1, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v15

    sget v8, Lcom/transsion/playercommon/R$string;->talkback_previous:I

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v15, v6, v8, v13}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move/from16 v8, p8

    invoke-virtual {v14, v8}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    sget v13, Lcom/transsion/playercommon/R$string;->talkback_pause:I

    :goto_0
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_2
    sget v13, Lcom/transsion/playercommon/R$string;->talkback_play:I

    goto :goto_0

    :goto_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v3, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/RemoteAction;

    invoke-static/range {p1 .. p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    move-object/from16 v15, p3

    invoke-direct {v3, v14, v15, v13, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/RemoteAction;

    sget v9, Lcom/transsion/playercommon/R$drawable;->ic_floating_next:I

    invoke-static {v1, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    sget v10, Lcom/transsion/playercommon/R$string;->talkback_next:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v6, v10, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move/from16 v2, p9

    invoke-virtual {v3, v2}, Landroid/app/RemoteAction;->setEnabled(Z)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, v0, Lo18;->a:Landroid/view/SurfaceView;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v0, Lo18;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    sget-object v0, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0, v2}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    :cond_4
    sget-object v0, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0, v5}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    const/16 v0, 0x1f

    if-lt v4, v0, :cond_5

    sget-object v0, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-static {v0, v8}, Ll18;->a(Landroid/app/PictureInPictureParams$Builder;Z)Landroid/app/PictureInPictureParams$Builder;

    :cond_5
    :try_start_0
    sget-object v0, Lo18;->e:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePictureInPictureActions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public v(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    const-string v0, "PipInPipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo18;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo18;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo18;->b:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public w(Landroid/app/Activity;ILjava/lang/String;IIIIZZ)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lo18;->x(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V

    return-void
.end method

.method public x(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    invoke-static {p1}, Lo18;->d(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lo18;->t(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p10}, Lo18;->u(Landroid/app/Activity;ILjava/lang/String;IIIIZZZ)V

    return-void
.end method
