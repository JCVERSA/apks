.class public final Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/spwaitkiller/SpWaitKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "neverWaitingFinishQueue",
        "",
        "getNeverWaitingFinishQueue",
        "()Z",
        "setNeverWaitingFinishQueue",
        "(Z)V",
        "neverProcessWorkOnMainThread",
        "getNeverProcessWorkOnMainThread",
        "setNeverProcessWorkOnMainThread",
        "unExpectExceptionCatcher",
        "Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;",
        "getUnExpectExceptionCatcher",
        "()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;",
        "setUnExpectExceptionCatcher",
        "(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)V",
        "hiddenApiExempter",
        "Lcom/transsion/spwaitkiller/HiddenApiExempter;",
        "getHiddenApiExempter",
        "()Lcom/transsion/spwaitkiller/HiddenApiExempter;",
        "setHiddenApiExempter",
        "(Lcom/transsion/spwaitkiller/HiddenApiExempter;)V",
        "build",
        "Lcom/transsion/spwaitkiller/SpWaitKiller;",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

.field private neverProcessWorkOnMainThread:Z

.field private neverWaitingFinishQueue:Z

.field private unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->context:Landroid/content/Context;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverWaitingFinishQueue:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverProcessWorkOnMainThread:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final build()Lcom/transsion/spwaitkiller/SpWaitKiller;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/spwaitkiller/SpWaitKiller;-><init>(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHiddenApiExempter()Lcom/transsion/spwaitkiller/HiddenApiExempter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNeverProcessWorkOnMainThread()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverProcessWorkOnMainThread:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNeverWaitingFinishQueue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverWaitingFinishQueue:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUnExpectExceptionCatcher()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hiddenApiExempter(Lcom/transsion/spwaitkiller/HiddenApiExempter;)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final neverProcessWorkOnMainThread(Z)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverProcessWorkOnMainThread:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final neverWaitingFinishQueue(Z)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverWaitingFinishQueue:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setHiddenApiExempter(Lcom/transsion/spwaitkiller/HiddenApiExempter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 2
    .line 3
    return-void
.end method

.method public final setNeverProcessWorkOnMainThread(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverProcessWorkOnMainThread:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNeverWaitingFinishQueue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->neverWaitingFinishQueue:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnExpectExceptionCatcher(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 2
    .line 3
    return-void
.end method

.method public final unExpectExceptionCatcher(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 2
    .line 3
    return-object p0
.end method
