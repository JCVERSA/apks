.class public Lcom/transsion/xuanniao/account/center/view/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/o;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/o;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/o;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o$b;->b:Lcom/transsion/xuanniao/account/center/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o$b;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Lxj;->c1(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o$b;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->g()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_8

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->f()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xn.fileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v1, v0, p2}, Ljr7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Lvl7;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const/16 p2, 0x1775

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o$b;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "photo"

    invoke-virtual {p1, p2}, Lxj;->c1(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o$b;->b:Lcom/transsion/xuanniao/account/center/view/o;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->g()V

    :cond_6
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const-string p2, "Select Image "

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1774

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    :goto_1
    return-void
.end method
