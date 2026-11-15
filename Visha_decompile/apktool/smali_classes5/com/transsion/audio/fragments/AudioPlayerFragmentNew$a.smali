.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-boolean p1, p1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$a;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerBaseFragment;->m:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_0
    return-void
.end method
