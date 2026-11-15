.class Lcom/transsion/audio/widgets/LrcViewNew$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/LrcViewNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/LrcViewNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {v0}, Lcom/transsion/audio/widgets/LrcViewNew;->h(Lcom/transsion/audio/widgets/LrcViewNew;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/audio/widgets/LrcViewNew;->q(Lcom/transsion/audio/widgets/LrcViewNew;Z)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->i(Lcom/transsion/audio/widgets/LrcViewNew;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->x(Lcom/transsion/audio/widgets/LrcViewNew;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/LrcViewNew$2;->this$0:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
