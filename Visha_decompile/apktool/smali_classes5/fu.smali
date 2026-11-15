.class public final synthetic Lfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iput-object p2, p0, Lfu;->c:Landroid/content/Intent;

    iput-object p3, p0, Lfu;->d:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object v1, p0, Lfu;->c:Landroid/content/Intent;

    iget-object p0, p0, Lfu;->d:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O0(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    return-object p0
.end method
