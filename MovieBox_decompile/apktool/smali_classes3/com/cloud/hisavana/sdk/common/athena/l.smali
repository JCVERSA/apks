.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/Boolean;

.field public final synthetic g:Ljava/lang/Long;

.field public final synthetic h:Z

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->a:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->f:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->g:Ljava/lang/Long;

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->h:Z

    .line 19
    .line 20
    iput-object p9, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->i:Landroid/os/Bundle;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->j:Ljava/lang/Integer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->a:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->f:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->g:Ljava/lang/Long;

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->h:Z

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->i:Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/athena/l;->j:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-static/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->h(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
