.class public Lal4$b;
.super Llfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lal4;->h()Lcom/just/agentweb/IAgentWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lal4;


# direct methods
.method public constructor <init>(Lal4;)V
    .locals 0

    iput-object p1, p0, Lal4$b;->a:Lal4;

    invoke-direct {p0}, Llfc;-><init>()V

    return-void
.end method


# virtual methods
.method public bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method
