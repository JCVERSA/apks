.class public Lru/zdevs/zarchiver/archiver/NArc$NArcStreamOutsidePipePosition;
.super Lru/zdevs/zarchiver/archiver/NArc$NArcException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/archiver/NArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NArcStreamOutsidePipePosition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Stream outside pipe position"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lru/zdevs/zarchiver/archiver/NArc$NArcException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
