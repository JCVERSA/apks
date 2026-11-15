.class public final Lbhb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwa2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhb;->a(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/tupdate/bean/UpdateEntity;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tupdate/bean/UpdateEntity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbhb$a;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    iput-object p2, p0, Lbhb$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lvk;->a:Lvk;

    iget-object p0, p0, Lbhb$a;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreDeeplink()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "cancel"

    invoke-virtual {v0, v1, p0}, Lvk;->F(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 5

    sget-object v0, Lvk;->a:Lvk;

    iget-object v1, p0, Lbhb$a;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreDeeplink()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "score"

    invoke-virtual {v0, v3, v1}, Lvk;->F(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ldhb;->a:Ldhb;

    iget-object v1, p0, Lbhb$a;->b:Landroid/content/Context;

    iget-object v3, p0, Lbhb$a;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {v3}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Ldhb;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lqa1;->a:Lqa1;

    iget-object v1, p0, Lbhb$a;->b:Landroid/content/Context;

    iget-object p0, p0, Lbhb$a;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/AppScoreContent;->getScoreDeeplink()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Lqa1;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
