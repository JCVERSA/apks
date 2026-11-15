.class final Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/shortcut/AudioShortCutHelper;->g(Landroid/app/Activity;Z)Lkotlinx/coroutines/j;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.audio.shortcut.AudioShortCutHelper$trySendAudioShortcut$1"
    f = "AudioShortCutHelper.kt"
    l = {
        0x40,
        0x41,
        0x42,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $showCustomUI:Z

.field Z$0:Z

.field Z$1:Z

.field label:I


# direct methods
.method public constructor <init>(ZLandroid/app/Activity;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/Activity;",
            "Lwh1<",
            "-",
            "Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$showCustomUI:Z

    iput-object p2, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;

    iget-boolean v0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$showCustomUI:Z

    iget-object p0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;-><init>(ZLandroid/app/Activity;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$1:Z

    iget-boolean v3, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p1

    new-instance v1, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;

    iget-object v7, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-direct {v1, v7, v6}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$supportShortCut$1;-><init>(Landroid/app/Activity;Lwh1;)V

    iput v5, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v5, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1;

    iget-object v7, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-direct {v5, v7, v6}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$shortcutExit$1;-><init>(Landroid/app/Activity;Lwh1;)V

    iput-boolean p1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$0:Z

    iput v4, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->label:I

    invoke-static {v1, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v8, v1

    move v1, p1

    move-object p1, v8

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v4

    new-instance v5, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1;

    iget-object v7, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-direct {v5, v7, v6}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$isChildModeClose$1;-><init>(Landroid/app/Activity;Lwh1;)V

    iput-boolean v1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$0:Z

    iput-boolean p1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->Z$1:Z

    iput v3, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->label:I

    invoke-static {v4, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    return-object v0

    :cond_7
    move v8, v1

    move v1, p1

    move-object p1, v3

    move v3, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAudioShortCutDialog, shortcutExit :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " supportShortCut :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isChildModeClose :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioShortCutHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_8

    const-string p0, "not supportShortCut "

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_8
    if-nez p1, :cond_9

    sget p0, Lcom/transsion/audio/R$string;->child_mode_forbidden:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_9
    if-eqz v1, :cond_b

    iget-boolean p0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$showCustomUI:Z

    if-nez p0, :cond_a

    sget p0, Lcom/transsion/audio/R$string;->has_cut_ready:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_a
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_b
    iget-boolean p1, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$showCustomUI:Z

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "MMKV_SHORTCUT_DO_NOT_REMIND"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/transsion/audio/activities/AudioShortcutGuideActivity;->O:Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;

    iget-object p0, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/transsion/audio/activities/AudioShortcutGuideActivity$a;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_c
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p1

    new-instance v1, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$1;

    iget-object v3, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->$activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1$1;-><init>(Landroid/app/Activity;Lwh1;)V

    iput v2, p0, Lcom/transsion/audio/shortcut/AudioShortCutHelper$trySendAudioShortcut$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    return-object v0

    :cond_d
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
