.class final Landroidx/media3/extractor/mp4/BoxParser$EyesData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EyesData"
.end annotation


# instance fields
.field private final striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    return-void
.end method

.method public static synthetic access$800(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)Landroidx/media3/extractor/mp4/BoxParser$StriData;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->striData:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    return-object p0
.end method
