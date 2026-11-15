.class public final synthetic Lrd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrd1;->a:Landroidx/media3/transformer/CompositionPlayer;

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    iget-object p0, p0, Lrd1;->a:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p0}, Landroidx/media3/transformer/CompositionPlayer;->q0(Landroidx/media3/transformer/CompositionPlayer;)J

    move-result-wide v0

    return-wide v0
.end method
