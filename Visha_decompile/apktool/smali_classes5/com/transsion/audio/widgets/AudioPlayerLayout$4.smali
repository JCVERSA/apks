.class Lcom/transsion/audio/widgets/AudioPlayerLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;->initCoverChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->A(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$4;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->K(Lcom/transsion/audio/widgets/AudioPlayerLayout;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
