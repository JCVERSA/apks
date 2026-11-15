.class Lcom/transsion/audio/widgets/AudioPlayerLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;->expandSmartEditLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$7;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->C(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
