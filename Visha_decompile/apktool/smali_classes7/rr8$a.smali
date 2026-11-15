.class public Lrr8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/CountryInfoUtil$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrr8;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lrr8;


# direct methods
.method public constructor <init>(Lrr8;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lrr8$a;->b:Lrr8;

    iput-object p2, p0, Lrr8$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getInstance()Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->IsSupportGslb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrr8$a;->b:Lrr8;

    iget-object v1, p0, Lrr8$a;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lrr8;->j(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V

    iget-object v0, p0, Lrr8$a;->b:Lrr8;

    iget-object p0, p0, Lrr8$a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lrr8;->i(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrr8$a;->b:Lrr8;

    invoke-static {v0, p1}, Lrr8;->k(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    iget-object v0, p0, Lrr8$a;->b:Lrr8;

    iget-object p0, p0, Lrr8$a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lrr8;->i(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onFailed()V
    .locals 1

    iget-object p0, p0, Lrr8$a;->b:Lrr8;

    invoke-static {p0}, Lrr8;->h(Lrr8;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "get_country_info_return_failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
