.class public final synthetic Lnn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioPlayerActivity;

.field public final synthetic b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn4;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iput-object p2, p0, Lnn4;->b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnn4;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object p0, p0, Lnn4;->b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    return-void
.end method
