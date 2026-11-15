.class public interface abstract Lq10;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM AudioTrack WHERE id=:id"
    .end annotation
.end method

.method public abstract insertAudioTrack(Lcom/transsion/dbdata/database/AudioTrack;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
