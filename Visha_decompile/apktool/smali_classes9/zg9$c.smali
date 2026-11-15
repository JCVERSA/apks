.class public Lzg9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzg9;->q(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lzg9$c;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "vd_ott_detail_addtohome_offline_got_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lzg9$c;->b:Landroid/app/Activity;

    const-class v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    sget v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->NAVIGATION_STATE_MASK:I

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTop_position(I)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setBottom_position(I)V

    const-string v1, "router_data"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lzg9$c;->b:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lzg9$c;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p0, p0, Lzg9$c;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "visha_ShortCutUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
