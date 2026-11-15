.class public final synthetic Lcj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lim5;


# direct methods
.method public synthetic constructor <init>(Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcj3;->b:Lim5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcj3;->b:Lim5;

    invoke-static {p0}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->g(Lim5;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;

    move-result-object p0

    return-object p0
.end method
