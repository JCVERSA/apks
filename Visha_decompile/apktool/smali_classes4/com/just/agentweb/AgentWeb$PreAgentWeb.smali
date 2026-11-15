.class public Lcom/just/agentweb/AgentWeb$PreAgentWeb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreAgentWeb"
.end annotation


# instance fields
.field private isReady:Z

.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWeb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method


# virtual methods
.method public get()Lcom/just/agentweb/AgentWeb;
    .locals 0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-object p0
.end method

.method public go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {p0, p1}, Lcom/just/agentweb/AgentWeb;->a(Lcom/just/agentweb/AgentWeb;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    return-object p0
.end method

.method public ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    .locals 1

    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb;->b(Lcom/just/agentweb/AgentWeb;)Lcom/just/agentweb/AgentWeb;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    :cond_0
    return-object p0
.end method
