.class Lcom/transsion/audio/widgets/AudioPlayerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/AudioSwitchView$IsSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->D(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/videowidgets/MVPlayerMediaView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->E(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->F(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/widgets/RoundImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->O(Lcom/transsion/audio/widgets/AudioPlayerLayout;Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$2;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->switchMusicMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method
