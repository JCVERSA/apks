.class public final Lcom/transsion/search/speech/SpeechRecognizerDialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/speech/SpeechRecognizerDialog;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/speech/SpeechRecognizerDialog;


# direct methods
.method constructor <init>(Lcom/transsion/search/speech/SpeechRecognizerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onBeginningOfSpeech() --> \u5f53\u5f00\u59cb\u8bf4\u8bdd\u65f6\u8c03\u7528"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> onBufferReceived() --> \u5f53\u63a5\u6536\u5230\u97f3\u9891\u6570\u636e\u65f6\u8c03\u7528"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onEndOfSpeech() --> \u5f53\u8bf4\u8bdd\u7ed3\u675f\u65f6\u8c03\u7528"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onError(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->v0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->v0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->x0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->y0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/transsion/search/speech/e;->a:Lcom/transsion/search/speech/e;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/transsion/search/speech/e;->a(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " --> onError() --> \u5f53\u53d1\u751f\u9519\u8bef\u65f6\u8c03\u7528 --> error = "

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, " -- msg = "

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-static {v2, v1, v3}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->B0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->w0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    sget-object v0, Lcom/transsion/search/speech/q;->a:Lcom/transsion/search/speech/q;

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/transsion/search/speech/q;->c(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    sget-object p1, Lcom/transsion/search/speech/q;->a:Lcom/transsion/search/speech/q;

    .line 94
    .line 95
    const/16 v1, 0x10

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/transsion/search/speech/e;->a(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/transsion/search/speech/q;->c(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->s0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Lvp/b;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    iget-object p1, p1, Lvp/b;->g:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    sget-object v0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;->NORMAL:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setMicState(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->s0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Lvp/b;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    iget-object p1, p1, Lvp/b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget v1, Lcom/transsion/search/R$string;->search_sr_tap_microphone_try_again:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onEvent() --> \u5f53\u53d1\u751f\u5176\u4ed6\u4e8b\u4ef6\u65f6\u8c03\u7528 --> eventType = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " --> params = "

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "results_recognition"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v3}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->A0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v3, "get(...)"

    .line 35
    .line 36
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-static {v0, p1, v1, v3, v2}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->Q0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-static {v0, v3, v4, p1, v2}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->N0(Lcom/transsion/search/speech/SpeechRecognizerDialog;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onReadyForSpeech() --> \u5f53\u8bed\u97f3\u8bc6\u522b\u51c6\u5907\u597d\u65f6\u8c03\u7528 --> params = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/transsion/search/speech/q;->a:Lcom/transsion/search/speech/q;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/search/speech/q;->d()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->t0(Lcom/transsion/search/speech/SpeechRecognizerDialog;)Lcom/transsion/search/speech/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/search/speech/c;->i()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "results_recognition"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/search/speech/SpeechRecognizerDialog$a;->a:Lcom/transsion/search/speech/SpeechRecognizerDialog;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v0, p1, v1, v2, v3}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->Q0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/transsion/search/speech/f;->a:Lcom/transsion/search/speech/f;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " --> onResults() --> \u5f53\u83b7\u5f97\u8bed\u97f3\u8bc6\u522b\u7ed3\u679c\u65f6\u8c03\u7528 = "

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/transsion/search/speech/f;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/transsion/search/speech/SpeechRecognizerDialog;->x0(Lcom/transsion/search/speech/SpeechRecognizerDialog;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    .line 1
    return-void
.end method
