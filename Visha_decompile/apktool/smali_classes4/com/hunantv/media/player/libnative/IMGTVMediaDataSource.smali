.class public interface abstract Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;
    }
.end annotation


# static fields
.field public static final IMGTVJS_IOBUFFER_NO_EXIST:I = -0x7858960d

.field public static final IMGTVMDS_ERROR_AJEXIT:I = -0x7849efb2

.field public static final IMGTVMDS_ERROR_EAGAIN:I = -0x7849cd70

.field public static final IMGTVMDS_ERROR_EOF:I = -0x7849cd71

.field public static final IMGTVMDS_ERROR_OPEN_TIMEOUT:I = -0x7849cd72

.field public static final IMGTVMDS_ERROR_READ_TIMEOUT:I = -0x7849cd73


# virtual methods
.method public abstract close(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDataSourceUrl()Ljava/lang/String;
.end method

.method public abstract getSize(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getVideoSourceType()I
.end method

.method public abstract readAt(Ljava/lang/String;[BJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setInfoListener(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;)V
.end method

.method public abstract setLogTag(Ljava/lang/String;)V
.end method
