.class public final Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Codec$EncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createForAudioEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .locals 1

    new-instance v0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;

    iget-object p0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public createForVideoEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .locals 1

    new-instance v0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;

    iget-object p0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    return-object v0
.end method
