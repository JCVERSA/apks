.class public Lo/w25;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ne3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/w25$a;
    }
.end annotation


# instance fields
.field a:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/nc6;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lo/ne3;

.field public c:Landroid/content/SharedPreferences;

.field public final d:Lo/w25$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/w25$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/w25$a;-><init>(Lo/v25;)V

    iput-object v0, p0, Lo/w25;->d:Lo/w25$a;

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/app/a;->h0(Lo/w25;)V

    const-string v0, "pref.fan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/w25;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/x93;->b(Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/n9;)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/x93;->c(Lo/n9;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/ne3;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lo/db;)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/ne3;->e(Lo/db;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lo/ne3;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public g(Lo/n9;)V
    .locals 1

    invoke-virtual {p0}, Lo/w25;->h()Lo/ne3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/x93;->g(Lo/n9;)V

    return-void
.end method

.method public h()Lo/ne3;
    .locals 3

    iget-object v0, p0, Lo/w25;->b:Lo/ne3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/w25;->d:Lo/w25$a;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lo/w25;->c:Landroid/content/SharedPreferences;

    const-string v1, "/native_ad_engine"

    const-string v2, "pubnative_mediation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NativeAdManagerProvider"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/w25;->a:Ldagger/Lazy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "native ad engine: mediation"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/w25;->a:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ne3;

    iput-object v0, p0, Lo/w25;->b:Lo/ne3;

    goto :goto_0

    :cond_1
    const-string v0, "native ad engine: dummy"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/w25;->d:Lo/w25$a;

    iput-object v0, p0, Lo/w25;->b:Lo/ne3;

    :goto_0
    iget-object v0, p0, Lo/w25;->b:Lo/ne3;

    iget-object v1, p0, Lo/w25;->d:Lo/w25$a;

    if-eq v0, v1, :cond_3

    invoke-virtual {v1}, Lo/aa;->C()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/n9;

    iget-object v2, p0, Lo/w25;->b:Lo/ne3;

    invoke-interface {v2, v1}, Lo/x93;->g(Lo/n9;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/w25;->d:Lo/w25$a;

    invoke-virtual {v0}, Lo/aa;->D()V

    iget-object v0, p0, Lo/w25;->b:Lo/ne3;

    iget-object v1, p0, Lo/w25;->d:Lo/w25$a;

    iget-object v1, v1, Lo/w25$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/x93;->b(Ljava/util/List;)V

    iget-object v0, p0, Lo/w25;->d:Lo/w25$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/w25$a;->b(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lo/w25;->b:Lo/ne3;

    return-object v0
.end method
