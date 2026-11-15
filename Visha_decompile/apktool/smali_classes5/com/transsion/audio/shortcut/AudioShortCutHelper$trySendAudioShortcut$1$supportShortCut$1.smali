.class final Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "",
        "<anonymous>",
        "(Lnk1;)Z"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.audio.shortcut.AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1"
    f = "AudioShortCutHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field label:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lwh1<",
            "-",
            "Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;

    iget-object p0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->$activity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;-><init>(Landroid/app/Activity;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;->$activity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/audio/shortcut/AudioShortCutHelper;->e(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
