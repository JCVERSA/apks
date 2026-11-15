.class public final Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J8\u0010*\u001a\u00020\u00002)\u0008\u0002\u0010)\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&\u00a2\u0006\u0004\u0008*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R7\u00109\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010@\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001a\u0010J\u001a\u00020E8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\u00a8\u0006K"
    }
    d2 = {
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "timeout",
        "",
        "M0",
        "(J)V",
        "H0",
        "initView",
        "J0",
        "",
        "result",
        "",
        "isComplete",
        "P0",
        "(Ljava/lang/String;Z)V",
        "resultStr",
        "F0",
        "(Ljava/lang/String;)V",
        "D0",
        "",
        "C0",
        "()I",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onPause",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "I0",
        "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;",
        "Lcom/transsion/search_pugc/speech/c;",
        "c",
        "Lcom/transsion/search_pugc/speech/c;",
        "initializeStrategy",
        "d",
        "Ljava/lang/String;",
        "mPartialResults",
        "Lvp/b;",
        "e",
        "Lvp/b;",
        "bind",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "Landroid/speech/SpeechRecognizer;",
        "g",
        "Landroid/speech/SpeechRecognizer;",
        "mSpeechRecognizer",
        "h",
        "Z",
        "isWorking",
        "Landroid/os/Handler;",
        "i",
        "Landroid/os/Handler;",
        "mHandler",
        "Lqi/b;",
        "j",
        "Lqi/b;",
        "getLogViewConfig",
        "()Lqi/b;",
        "logViewConfig",
        "Search_psRelease"
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
.field private c:Lcom/transsion/search_pugc/speech/c;

.field private d:Ljava/lang/String;

.field private e:Lvp/b;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:Landroid/speech/SpeechRecognizer;

.field private h:Z

.field private final i:Landroid/os/Handler;

.field private final j:Lqi/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->dialog_speech_recognizer_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v0, Lqi/b;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "sr_dialog"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->j:Lqi/b;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C0()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 14
    .line 15
    div-int/lit8 v1, v0, 0x3

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private final D0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v1, v0

    .line 25
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :goto_3
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lcom/transsion/search_pugc/speech/c;->e(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_2
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    new-instance v1, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$a;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$a;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v0, v0, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    new-instance v1, Lcom/transsion/search_pugc/speech/k;

    .line 71
    .line 72
    invoke-direct {v1, p0, v0}, Lcom/transsion/search_pugc/speech/k;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method private static final E0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/search_pugc/speech/c;->k()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final F0(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/speech/q;->a:Lcom/transsion/search_pugc/speech/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search_pugc/speech/q;->e()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$onResult$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog$onResult$1;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final G0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 3
    .line 4
    sget-object v0, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " --> onViewCreated() --> setCallback{} --> \u91cd\u65b0\u83b7\u53d6\u8bed\u97f3\u8bc6\u522b\u5bf9\u8c61 --> initSpeechRecognizer()"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->D0()V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lvp/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/search_pugc/speech/i;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/i;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/search_pugc/speech/j;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/j;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private static final K0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/transsion/search_pugc/speech/q;->a:Lcom/transsion/search_pugc/speech/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search_pugc/speech/q;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final L0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    .line 14
    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    .line 20
    .line 21
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 25
    .line 26
    const-string v2, "free_form"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "android.speech.extra.LANGUAGE"

    .line 40
    .line 41
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object p1, v1

    .line 65
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_2
    const-wide/16 v2, 0x0

    .line 79
    .line 80
    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->N0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;JILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->initView()V

    .line 84
    .line 85
    .line 86
    :goto_3
    iget-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 87
    .line 88
    xor-int/2addr p1, v0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 90
    .line 91
    return-void
.end method

.method private final M0(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->i:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/search_pugc/speech/l;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsion/search_pugc/speech/l;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic N0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, 0x1388

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->M0(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final O0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, " --> setSpeechTimeout() --> \u8bed\u97f3\u8bc6\u522b\u8d85\u65f6"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final P0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    iget-object p2, p2, Lvp/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method static synthetic Q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final initView()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/search/R$string;->search_sr_speak_now:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getString(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->P0(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;->ACTIVE:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setMicState(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lvp/b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget v2, Lcom/transsion/search/R$string;->search_sr_tap_try_tip_avatar:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, v0, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget v2, Lcom/transsion/wrapperad/R$color;->white_40:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setActiveCircleColor(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, v0, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string v1, "#2166E5"

    .line 96
    .line 97
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const-string v2, "#1DD171"

    .line 102
    .line 103
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    filled-new-array {v1, v2}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setLoadingGradientColors([I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->K0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->L0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->G0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->E0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->O0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lcom/transsion/search_pugc/speech/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic x0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->F0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final I0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->j:Lqi/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " --> onCreate() --> \u5c55\u793a\u5f39\u7a97\u7ec4\u4ef6"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move-object v0, p1

    .line 25
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :goto_2
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lkotlin/Unit;

    .line 47
    .line 48
    :cond_1
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " --> onDismiss() --> \u8bed\u97f3\u8bc6\u522b\u5f39\u7a97\u5173\u95ed \u91ca\u653e\u8d44\u6e90"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/transsion/search_pugc/speech/f;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->g:Landroid/speech/SpeechRecognizer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x50

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 34
    .line 35
    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    sget v0, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 48
    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    const/4 v1, -0x2

    .line 52
    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 62
    .line 63
    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->C0()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    .line 72
    :cond_2
    invoke-static {p1}, Lvp/b;->a(Landroid/view/View;)Lvp/b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->e:Lvp/b;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->initView()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->J0()V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/transsion/search_pugc/speech/c;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/transsion/search_pugc/speech/c;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->c:Lcom/transsion/search_pugc/speech/c;

    .line 90
    .line 91
    new-instance p2, Lcom/transsion/search_pugc/speech/h;

    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/transsion/search_pugc/speech/h;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/speech/c;->j(Lkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->D0()V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/transsion/search_pugc/speech/f;->a:Lcom/transsion/search_pugc/speech/f;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-object v0, Lcom/transsion/search_pugc/speech/g;->a:Lcom/transsion/search_pugc/speech/g;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/search_pugc/speech/g;->a()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p2, " --> onViewCreated() --> \u8bed\u97f3\u8bc6\u522b\u662f\u5426\u53ef\u7528 = "

    .line 123
    .line 124
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/speech/f;->b(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
