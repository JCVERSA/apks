.class interface abstract Landroidx/media3/transformer/TransformerVideoGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/TransformerVideoGraph$Factory;
    }
.end annotation


# virtual methods
.method public abstract createInput(I)Landroidx/media3/transformer/GraphInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract renderOutputFrameWithMediaPresentationTime()V
.end method
