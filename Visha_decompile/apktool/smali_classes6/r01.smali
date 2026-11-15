.class public final synthetic Lr01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr01;->b:Lcom/transsion/cloud/fragment/CloudFragment;

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->b1(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method
