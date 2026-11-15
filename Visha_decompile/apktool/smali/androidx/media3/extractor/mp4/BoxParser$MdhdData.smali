.class final Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MdhdData"
.end annotation


# instance fields
.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaDurationUs:J

.field private final timescale:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    iput-object p5, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$300(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    return-wide v0
.end method

.method public static synthetic access$600(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    return-wide v0
.end method
