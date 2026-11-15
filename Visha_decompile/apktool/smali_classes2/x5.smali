.class public final synthetic Lx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ln6;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;


# direct methods
.method public synthetic constructor <init>(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5;->b:Ln6;

    iput-object p2, p0, Lx5;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx5;->b:Ln6;

    iget-object p0, p0, Lx5;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->b(Ln6;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method
