.class public final synthetic Landroidx/media3/transformer/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/g0;->b:Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/g0;->b:Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-static {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->a(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V

    return-void
.end method
