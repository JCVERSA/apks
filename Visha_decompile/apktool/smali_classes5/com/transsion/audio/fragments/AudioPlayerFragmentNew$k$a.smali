.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k$a;
.super Luob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k$a;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$k;

    invoke-direct {p0}, Luob;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "AudioPlayerFragmentNew"

    const-string p1, "In mHalfOpenAudioPlayerLayoutAnimator onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
