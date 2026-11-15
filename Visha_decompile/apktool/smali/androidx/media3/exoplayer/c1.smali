.class public final synthetic Landroidx/media3/exoplayer/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/c1;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/c1;->b:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
