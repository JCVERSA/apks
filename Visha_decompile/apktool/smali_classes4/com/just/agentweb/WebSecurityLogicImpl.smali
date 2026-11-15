.class public Lcom/just/agentweb/WebSecurityLogicImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/WebSecurityCheckLogic;


# instance fields
.field private TAG:Ljava/lang/String;

.field private webviewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->webviewType:I

    return-void
.end method

.method public static getInstance(I)Lcom/just/agentweb/WebSecurityLogicImpl;
    .locals 1

    new-instance v0, Lcom/just/agentweb/WebSecurityLogicImpl;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebSecurityLogicImpl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public dealHoneyComb(Landroid/webkit/WebView;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    return-void
.end method

.method public dealJsInterface(Landroidx/collection/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/just/agentweb/AgentWeb$SecurityType;",
            ")V"
        }
    .end annotation

    sget-object p0, Lcom/just/agentweb/AgentWeb$SecurityType;->DEFAULT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-void
.end method
