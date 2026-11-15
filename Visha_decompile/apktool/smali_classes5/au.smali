.class public final synthetic Lau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau;->b:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lau;->b:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->B0(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
