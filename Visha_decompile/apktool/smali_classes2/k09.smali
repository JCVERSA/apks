.class public final synthetic Lk09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/lang/Boolean;

.field public final synthetic h:Ljava/lang/Long;

.field public final synthetic i:Z

.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic k:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk09;->b:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    iput-object p2, p0, Lk09;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-boolean p3, p0, Lk09;->d:Z

    iput-object p4, p0, Lk09;->e:Ljava/util/List;

    iput-object p5, p0, Lk09;->f:Ljava/util/List;

    iput-object p6, p0, Lk09;->g:Ljava/lang/Boolean;

    iput-object p7, p0, Lk09;->h:Ljava/lang/Long;

    iput-boolean p8, p0, Lk09;->i:Z

    iput-object p9, p0, Lk09;->j:Landroid/os/Bundle;

    iput-object p10, p0, Lk09;->k:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lk09;->b:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    iget-object v1, p0, Lk09;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-boolean v2, p0, Lk09;->d:Z

    iget-object v3, p0, Lk09;->e:Ljava/util/List;

    iget-object v4, p0, Lk09;->f:Ljava/util/List;

    iget-object v5, p0, Lk09;->g:Ljava/lang/Boolean;

    iget-object v6, p0, Lk09;->h:Ljava/lang/Long;

    iget-boolean v7, p0, Lk09;->i:Z

    iget-object v8, p0, Lk09;->j:Landroid/os/Bundle;

    iget-object v9, p0, Lk09;->k:Ljava/lang/Integer;

    invoke-static/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->h(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method
