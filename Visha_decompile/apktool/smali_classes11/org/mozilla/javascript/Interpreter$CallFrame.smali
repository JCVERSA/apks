.class Lorg/mozilla/javascript/Interpreter$CallFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallFrame"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27772e38498fb682L


# instance fields
.field final debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

.field final emptyStackTop:I

.field final fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

.field frameIndex:I

.field frozen:Z

.field final idata:Lorg/mozilla/javascript/InterpreterData;

.field isContinuationsTopFrame:Z

.field final localShift:I

.field parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field pc:I

.field pcPrevBranch:I

.field pcSourceLineStart:I

.field result:Ljava/lang/Object;

.field resultDbl:D

.field sDbl:[D

.field savedCallOp:I

.field savedStackTop:I

.field scope:Lorg/mozilla/javascript/Scriptable;

.field stack:[Ljava/lang/Object;

.field stackAttributes:[I

.field final thisObj:Lorg/mozilla/javascript/Scriptable;

.field throwable:Ljava/lang/Object;

.field final useActivation:Z

.field final varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p1, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lorg/mozilla/javascript/debug/Debugger;->getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v4, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput-object p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iput-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    iget p2, p4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v2, p2, 0x1

    :goto_3
    iput v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getMaximumInterpreterStackDepth()I

    move-result p1

    if-gt v2, p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iput v4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    return-void

    :cond_4
    const-string p0, "Exceeded maximum stack depth"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public static synthetic a(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lorg/mozilla/javascript/Interpreter$CallFrame;->h(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->i(Ljava/lang/Object;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;
    .locals 1

    :goto_0
    if-ne p0, p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->f(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/c;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/e;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/e;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mozilla/javascript/c;->q(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->e(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    new-instance v1, Lorg/mozilla/javascript/d;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/d;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->g()Z

    move-result v6

    move-object v3, v4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return p0

    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/c;)Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->access$200(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/javascript/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p0, p0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    return p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public final synthetic h(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->e(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v2}, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode()I

    move-result v2

    add-int/2addr v0, v2

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p0, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final synthetic i(Ljava/lang/Object;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;
    .locals 0

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->d(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DII)V
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p3, p4, p5, p6}, Lorg/mozilla/javascript/Interpreter;->access$000([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p3

    :cond_0
    const/4 p4, 0x0

    move p5, v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    invoke-static {v2, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->createArrowFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    invoke-static {v2, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v3, v3, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {v0, v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p2, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget v0, p2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_5

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez p2, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    move p2, v1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    array-length v3, v0

    if-ge p2, v3, :cond_7

    aget-object v0, v0, p2

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {p1, v0, v3, p2}, Lorg/mozilla/javascript/Interpreter;->access$100(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v0, p1

    add-int/2addr v0, v2

    if-eq p2, v0, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    new-array p1, p2, [I

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    new-array p1, p2, [D

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpreterData;->getParamAndVarCount()I

    move-result p1

    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_a

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/InterpreterData;->getParamOrVarConst(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/16 v2, 0xd

    aput v2, v0, p2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    if-le p1, p6, :cond_b

    goto :goto_3

    :cond_b
    move p6, p1

    :goto_3
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-static {p3, p5, p1, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_c

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {p4, p5, p1, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    if-eq p6, p1, :cond_d

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object p2, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method
