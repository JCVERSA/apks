.class public final synthetic Lbj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

.field public final synthetic b:Lim5;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lim5;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj3;->a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iput-object p2, p0, Lbj3;->b:Lim5;

    iput-wide p3, p0, Lbj3;->c:J

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbj3;->a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iget-object v1, p0, Lbj3;->b:Lim5;

    iget-wide v2, p0, Lbj3;->c:J

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->b(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lim5;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
