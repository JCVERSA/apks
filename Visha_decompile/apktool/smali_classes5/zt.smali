.class public final synthetic Lzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzt;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iput-object p2, p0, Lzt;->c:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzt;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object p0, p0, Lzt;->c:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    return-object p0
.end method
