.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;
.super Ln6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->d()Ln6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/internal/agentpage/a;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/internal/agentpage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-direct {p0}, Ln6;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln6;->onAdLoaded()V

    .line 2
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->m()V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Ln6;->onAdLoaded(Ljava/util/List;)V

    .line 4
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->m()V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ln6;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->m()V

    return-void
.end method
