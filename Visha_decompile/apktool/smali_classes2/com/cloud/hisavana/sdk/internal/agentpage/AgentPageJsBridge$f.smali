.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;
.super Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/internal/agentpage/a;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/internal/agentpage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ln6;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/a;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
