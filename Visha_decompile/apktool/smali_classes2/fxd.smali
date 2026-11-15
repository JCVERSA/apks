.class public final synthetic Lfxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/h0$d;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/h0$d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxd;->b:Lcom/cloud/hisavana/sdk/h0$d;

    iput-object p2, p0, Lfxd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lfxd;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfxd;->b:Lcom/cloud/hisavana/sdk/h0$d;

    iget-object v1, p0, Lfxd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Lfxd;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/h0$d;->c(Lcom/cloud/hisavana/sdk/h0$d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method
