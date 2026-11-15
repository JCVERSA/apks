.class public final synthetic La11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;

.field public final synthetic c:Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La11;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    iput-object p2, p0, La11;->c:Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, La11;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    iget-object p0, p0, La11;->c:Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->n1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;Landroid/view/View;)V

    return-void
.end method
