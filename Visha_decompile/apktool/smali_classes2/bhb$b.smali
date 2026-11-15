.class public final Lbhb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwa2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhb;->b(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/tupdate/bean/UpdateEntity;


# direct methods
.method public constructor <init>(Lcom/cloud/tupdate/bean/UpdateEntity;)V
    .locals 0

    iput-object p1, p0, Lbhb$b;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lvk;->a:Lvk;

    iget-object p0, p0, Lbhb$b;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "cancel"

    invoke-virtual {v0, v1, p0}, Lvk;->L(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "upgrade_ignore_click"

    const-string/jumbo v2, "upgrade"

    if-eqz p1, :cond_0

    sget-object v3, Lvk;->a:Lvk;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lvk;->r(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lvk;->a:Lvk;

    invoke-virtual {v3, v2, v1, v0}, Lvk;->r(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object v1, p0, Lbhb$b;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    sget-object v0, Ldhb;->a:Ldhb;

    iget-object p0, p0, Lbhb$b;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0, p1}, Ldhb;->o(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    sget-object v0, Lvk;->a:Lvk;

    iget-object p0, p0, Lbhb$b;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, v1, p0}, Lvk;->L(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
