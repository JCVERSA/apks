.class public final Lcom/transsion/audio/databinding/BottomAudioBarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Lcom/transsion/audio/widgets/AudioAppFootActionBar;


# virtual methods
.method public a()Lcom/transsion/audio/widgets/AudioAppFootActionBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/databinding/BottomAudioBarBinding;->b:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    return-object p0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/databinding/BottomAudioBarBinding;->a()Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    move-result-object p0

    return-object p0
.end method
