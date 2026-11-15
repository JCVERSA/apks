.class public Lij4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij4;->b(Landroid/app/Activity;ZLhhb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhhb;

.field public final synthetic b:Lij4;


# direct methods
.method public constructor <init>(Lij4;Lhhb;)V
    .locals 0

    iput-object p1, p0, Lij4$a;->b:Lij4;

    iput-object p2, p0, Lij4$a;->a:Lhhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lij4$a;->a:Lhhb;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lhhb;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V
    .locals 2

    iget-object p0, p0, Lij4$a;->a:Lhhb;

    if-eqz p0, :cond_0

    new-instance v0, Lehb;

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isNewVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->getShowUpgradeDialog()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lehb;-><init>(ZZ)V

    invoke-interface {p0, v0}, Lhhb;->a(Lehb;)V

    :cond_0
    return-void
.end method
