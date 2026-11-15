.class public final synthetic Lj09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:Ljava/lang/Boolean;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/Long;

.field public final synthetic i:Ljava/lang/Long;

.field public final synthetic j:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj09;->b:Ljava/lang/Integer;

    iput-object p2, p0, Lj09;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lj09;->d:Ljava/lang/Long;

    iput-object p4, p0, Lj09;->e:Ljava/lang/Boolean;

    iput-object p5, p0, Lj09;->f:Ljava/lang/Boolean;

    iput-object p6, p0, Lj09;->g:Ljava/lang/String;

    iput-object p7, p0, Lj09;->h:Ljava/lang/Long;

    iput-object p8, p0, Lj09;->i:Ljava/lang/Long;

    iput-object p9, p0, Lj09;->j:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lj09;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lj09;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lj09;->d:Ljava/lang/Long;

    iget-object v3, p0, Lj09;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lj09;->f:Ljava/lang/Boolean;

    iget-object v5, p0, Lj09;->g:Ljava/lang/String;

    iget-object v6, p0, Lj09;->h:Ljava/lang/Long;

    iget-object v7, p0, Lj09;->i:Ljava/lang/Long;

    iget-object v8, p0, Lj09;->j:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->j(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    return-void
.end method
