.class public final Lbhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyw4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V
    .locals 3

    const-string/jumbo p0, "updateEntity"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "updateManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lww4;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lvk;->a:Lvk;

    const-string v1, "score"

    invoke-virtual {v0, v1, p1}, Lvk;->C(Ljava/lang/String;Lcom/cloud/tupdate/bean/UpdateEntity;)V

    sget-object v0, Lwa2;->a:Lwa2$a;

    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    new-instance v2, Lbhb$a;

    invoke-direct {v2, p1, p0}, Lbhb$a;-><init>(Lcom/cloud/tupdate/bean/UpdateEntity;Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1, p2, v2}, Lwa2$a;->k(Landroid/content/Context;Lcom/cloud/tupdate/bean/AppScoreContent;Lww4;Lwa2$b;)V

    return-void
.end method

.method public b(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 6

    const-string/jumbo p0, "updateEntity"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "updateManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lww4;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_5

    if-nez p3, :cond_5

    invoke-interface {p2}, Lww4;->f()Lvw4;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p2}, Lww4;->f()Lvw4;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lvw4;->b()Z

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_3

    move v0, p3

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    :cond_4
    sget-object p0, Ldhb;->a:Ldhb;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const-string/jumbo v0, "tupdate_update_day"

    invoke-virtual {p0, v1, v0, p3}, Ldhb;->t(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    sget-object v0, Lwa2;->a:Lwa2$a;

    new-instance v4, Lbhb$b;

    invoke-direct {v4, p1}, Lbhb$b;-><init>(Lcom/cloud/tupdate/bean/UpdateEntity;)V

    invoke-interface {p2}, Lww4;->e()Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lwa2$a;->p(Landroid/content/Context;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Lwa2$c;Z)V

    return-void
.end method
