.class public Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;->a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;->a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->K()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;->a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-static {v0, p1, p2}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->M(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;J)V

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;->a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-static {p2}, Lcom/transsion/magicmovie/activity/MarketingSplashActivity;->L(Lcom/transsion/magicmovie/activity/MarketingSplashActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/MarketingSplashActivity$a;->a:Lcom/transsion/magicmovie/activity/MarketingSplashActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f130a76

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
