.class Lcom/transsion/audio/widgets/AudioPlayerLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;->collapseSmartEditLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

.field final synthetic val$showSmartEditBtn:Z


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iput-boolean p2, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->val$showSmartEditBtn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->C(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->C(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->B(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/SmartEditAnimationView;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$8;->val$showSmartEditBtn:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->setVisibility(I)V

    :cond_2
    return-void
.end method
