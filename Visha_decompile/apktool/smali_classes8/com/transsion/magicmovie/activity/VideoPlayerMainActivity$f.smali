.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleAppFootActionBarClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->b2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Laz5;->i(I)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result p1

    if-nez p1, :cond_0

    sget p0, Lcom/transsion/magicmovie/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget-object p1, La41;->a:La41;

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p2}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->b2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;)V

    invoke-interface {p1, p2, v0}, Lxy0;->k(Ljava/util/List;Le74;)V

    return-void
.end method
