.class public Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "This track is a SoundCloud Go+ track"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    const-string v0, "This track is a SoundCloud Go+ track"

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
