.class public final synthetic Landroidx/media3/transformer/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/l0;->a:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/l0;->a:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;

    check-cast p1, Landroidx/media3/transformer/ExportException;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method
