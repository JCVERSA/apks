.class public final synthetic Ll09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll09;->b:Ljava/lang/Integer;

    iput-object p2, p0, Ll09;->c:Ljava/lang/String;

    iput-object p3, p0, Ll09;->d:Ljava/lang/String;

    iput-object p4, p0, Ll09;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p5, p0, Ll09;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ll09;->b:Ljava/lang/Integer;

    iget-object v1, p0, Ll09;->c:Ljava/lang/String;

    iget-object v2, p0, Ll09;->d:Ljava/lang/String;

    iget-object v3, p0, Ll09;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Ll09;->f:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method
