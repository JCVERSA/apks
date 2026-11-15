.class public final synthetic Lm1d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1d;->b:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lm1d;->b:Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-static {p0}, Ll3d;->f(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    return-void
.end method
