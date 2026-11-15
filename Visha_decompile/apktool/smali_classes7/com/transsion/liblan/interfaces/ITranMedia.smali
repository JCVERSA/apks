.class public interface abstract Lcom/transsion/liblan/interfaces/ITranMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLANObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranMedia$Stats;,
        Lcom/transsion/liblan/interfaces/ITranMedia$Slave;,
        Lcom/transsion/liblan/interfaces/ITranMedia$UnknownTrack;,
        Lcom/transsion/liblan/interfaces/ITranMedia$SubtitleTrack;,
        Lcom/transsion/liblan/interfaces/ITranMedia$VideoTrack;,
        Lcom/transsion/liblan/interfaces/ITranMedia$AudioTrack;,
        Lcom/transsion/liblan/interfaces/ITranMedia$Track;,
        Lcom/transsion/liblan/interfaces/ITranMedia$ParsedStatus;,
        Lcom/transsion/liblan/interfaces/ITranMedia$Parse;,
        Lcom/transsion/liblan/interfaces/ITranMedia$State;,
        Lcom/transsion/liblan/interfaces/ITranMedia$Meta;,
        Lcom/transsion/liblan/interfaces/ITranMedia$MediaType;,
        Lcom/transsion/liblan/interfaces/ITranMedia$EventListener;,
        Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/liblan/interfaces/ITranLANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addOption(Ljava/lang/String;)V
.end method

.method public abstract addSlave(Lcom/transsion/liblan/interfaces/ITranMedia$Slave;)V
.end method

.method public abstract clearSlaves()V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMeta(I)Ljava/lang/String;
.end method

.method public abstract getMeta(IZ)Ljava/lang/String;
.end method

.method public abstract getSlaves()[Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
.end method

.method public abstract getState()I
.end method

.method public abstract getStats()Lcom/transsion/liblan/interfaces/ITranMedia$Stats;
.end method

.method public abstract getTrack(I)Lcom/transsion/liblan/interfaces/ITranMedia$Track;
.end method

.method public abstract getTrackCount()I
.end method

.method public abstract getType()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isParsed()Z
.end method

.method public abstract parse()Z
.end method

.method public abstract parse(I)Z
.end method

.method public abstract parseAsync()Z
.end method

.method public abstract parseAsync(I)Z
.end method

.method public abstract parseAsync(II)Z
.end method

.method public abstract setEventListener(Lcom/transsion/liblan/interfaces/ITranMedia$EventListener;)V
.end method

.method public abstract setHWDecoderEnabled(ZZ)V
.end method

.method public abstract setPlayerDefaultOptions()V
.end method

.method public abstract subItems()Lcom/transsion/liblan/interfaces/ITranMediaList;
.end method
