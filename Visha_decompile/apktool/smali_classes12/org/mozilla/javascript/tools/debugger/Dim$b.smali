.class public Lorg/mozilla/javascript/tools/debugger/Dim$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;
.implements Lorg/mozilla/javascript/ContextFactory$Listener;
.implements Lorg/mozilla/javascript/debug/Debugger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/debugger/Dim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Lorg/mozilla/javascript/tools/debugger/Dim;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Object;

.field public k:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    .line 4
    iput p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$b;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/javascript/tools/debugger/Dim$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->h:Z

    return p0
.end method

.method public static synthetic b(Lorg/mozilla/javascript/tools/debugger/Dim$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic c(Lorg/mozilla/javascript/tools/debugger/Dim$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lorg/mozilla/javascript/tools/debugger/Dim$b;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->k:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic e(Lorg/mozilla/javascript/tools/debugger/Dim$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lorg/mozilla/javascript/tools/debugger/Dim$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic g(Lorg/mozilla/javascript/tools/debugger/Dim$b;)V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$b;->j()V

    return-void
.end method

.method public static synthetic h(Lorg/mozilla/javascript/tools/debugger/Dim$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic i(Lorg/mozilla/javascript/tools/debugger/Dim$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public contextCreated(Lorg/mozilla/javascript/Context;)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/Dim$b;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/mozilla/javascript/tools/debugger/Dim$b;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V

    invoke-virtual {p1, v2, v0}, Lorg/mozilla/javascript/Context;->setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    return-void
.end method

.method public contextReleased(Lorg/mozilla/javascript/Context;)V
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method public getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2200(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v1, p1, p0, p2, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;Lorg/mozilla/javascript/tools/debugger/Dim$a;)V

    return-object v1
.end method

.method public handleCompilationDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-interface {p2}, Lorg/mozilla/javascript/debug/DebuggableScript;->isTopLevel()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p0, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2400(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2100(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    return-void
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->f:Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2000(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->k:[Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->f:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->g:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1900(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->j:Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->f:Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const-string p1, "undefined"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->i:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->i:Ljava/lang/String;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_2

    const-string p1, "[object Call]"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->i:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->i:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->stringIsCompilableUnit(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->h:Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1800(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->b:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1800(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/tools/debugger/ScopeProvider;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;)V

    :cond_4
    move-object v3, v0

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->e:Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->d:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->e:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2, v1}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
