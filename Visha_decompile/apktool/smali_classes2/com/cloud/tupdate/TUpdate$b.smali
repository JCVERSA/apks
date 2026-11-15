.class public final Lcom/cloud/tupdate/TUpdate$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tupdate/TUpdate;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tupdate/TUpdate$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail()V
    .locals 1

    sget-object p0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    const-string v0, "gslb is fail"

    invoke-virtual {p0, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 1

    iget-object p0, p0, Lcom/cloud/tupdate/TUpdate$b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "gslb_init_url"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lvk;->a:Lvk;

    const-string v0, "gslb_init"

    invoke-virtual {p0, v0, p1}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
