.class public final synthetic Lcom/transsion/search_pugc/speech/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

.field public final synthetic b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/k;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/search_pugc/speech/k;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/k;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/speech/k;->b:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;->q0(Lcom/transsion/search_pugc/speech/SpeechRecognizerDialog;Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
