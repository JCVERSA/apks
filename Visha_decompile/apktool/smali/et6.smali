.class public final synthetic Let6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/OnInputFrameProcessedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/MultipleInputVideoGraph;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/MultipleInputVideoGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let6;->a:Landroidx/media3/effect/MultipleInputVideoGraph;

    return-void
.end method


# virtual methods
.method public final onInputFrameProcessed(IJ)V
    .locals 0

    iget-object p0, p0, Let6;->a:Landroidx/media3/effect/MultipleInputVideoGraph;

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/effect/MultipleInputVideoGraph;->a(Landroidx/media3/effect/MultipleInputVideoGraph;IJ)V

    return-void
.end method
