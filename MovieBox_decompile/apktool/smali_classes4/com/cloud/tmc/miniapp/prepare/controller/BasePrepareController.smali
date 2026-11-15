.class public abstract Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
.implements Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcresource:PrepareController"


# instance fields
.field public callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public context:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

.field public errorIntercepted:Z

.field private interceptedBeforeSteps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;",
            ">;"
        }
    .end annotation
.end field

.field public interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;",
            ">;"
        }
    .end annotation
.end field

.field private locked:Z

.field private lockedKey:Ljava/lang/Object;

.field private pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

.field private status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public steps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;",
            ">;"
        }
    .end annotation
.end field

.field public timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 6
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 7
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 8
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 9
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    .line 10
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 11
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 12
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0OO()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    .line 29
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 32
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 34
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 35
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    .line 36
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    return-void
.end method

.method private interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z
    .locals 5

    .line 1
    const-string v0, "step "

    .line 2
    .line 3
    const-string v1, "Tmcresource:PrepareController"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " interceptAfter"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    .line 49
    .line 50
    invoke-interface {v3, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " intercepted after by "

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x1

    .line 98
    return p1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    return p1

    .line 106
    :goto_0
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method private interceptBefore(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z
    .locals 5

    .line 1
    const-string v0, "step "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " interceptBefore"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Tmcresource:PrepareController"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    .line 50
    .line 51
    invoke-interface {v3, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " intercepted before by "

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    return p1

    .line 93
    :cond_1
    const/4 p1, 0x0

    .line 94
    return p1
.end method

.method private interceptOnError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 4
    .line 5
    return-void
.end method

.method public createTimer(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;)Lcom/cloud/tmc/miniapp/prepare/controller/OooO;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public finish()V
    .locals 3

    .line 1
    const-string v0, "Tmcresource:PrepareController"

    .line 2
    .line 3
    const-string v1, "finish"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->FINISH:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    .line 22
    .line 23
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    .line 24
    .line 25
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public getStatus()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public lock(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "locked with key: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Tmcresource:PrepareController"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 27
    .line 28
    return-void
.end method

.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "Tmcresource:PrepareController"

    .line 14
    .line 15
    const-string v2, "moveToError!"

    .line 16
    .line 17
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->unlock(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptOnError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/PrepareContext;->getPrepareData()Lcom/cloud/tmc/integration/model/PrepareData;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-interface {v2, v3, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 55
    .line 56
    sget-object p1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->ERROR:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    .line 74
    .line 75
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    .line 76
    .line 77
    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public moveToNext()V
    .locals 6

    .line 1
    const-string v0, "step "

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 4
    .line 5
    const-string v2, "Tmcresource:PrepareController"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v0, "controller locked by "

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " cannot moveToNext!"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v0, "controller cannot moveToNext with status: "

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 91
    .line 92
    invoke-interface {v1, p0, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_3

    .line 104
    .line 105
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptBefore(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v5, " execute"

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 145
    .line 146
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 147
    .line 148
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 149
    .line 150
    invoke-interface {v1, p0, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    :try_end_0
    .catch Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 154
    .line 155
    if-nez v4, :cond_6

    .line 156
    .line 157
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO00o()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_5

    .line 171
    .line 172
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, " can\'t continue after execute. status: "

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_5
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 202
    .line 203
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_8

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToNext()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_6
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, " execute error!"

    .line 228
    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->finish()V

    .line 244
    .line 245
    .line 246
    :cond_8
    :goto_1
    return-void
.end method

.method public onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTimeout(J)V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "ERROR_TIMEOUT with elapsed: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "3"

    .line 21
    .line 22
    invoke-direct {v0, p2, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public postTimeOut(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->createTimer(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;)Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "postTimeout "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Tmcresource:PrepareController"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    .line 41
    .line 42
    iget-wide v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO00o:J

    .line 43
    .line 44
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    .line 45
    .line 46
    check-cast v4, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    .line 59
    .line 60
    invoke-direct {v1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/prepare/controller/OooO;J)V

    .line 61
    .line 62
    .line 63
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    .line 66
    .line 67
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "You cannot set interceptor after execute"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToNext()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "unlocked with key: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", lockedKey: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Tmcresource:PrepareController"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 39
    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method
