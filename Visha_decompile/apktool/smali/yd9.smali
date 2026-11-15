.class public final synthetic Lyd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

.field public final synthetic c:Lcom/google/common/collect/ImmutableMap;

.field public final synthetic d:Landroidx/media3/common/Timeline;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd9;->b:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    iput-object p2, p0, Lyd9;->c:Lcom/google/common/collect/ImmutableMap;

    iput-object p3, p0, Lyd9;->d:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyd9;->b:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;

    iget-object v1, p0, Lyd9;->c:Lcom/google/common/collect/ImmutableMap;

    iget-object p0, p0, Lyd9;->d:Landroidx/media3/common/Timeline;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->a(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/common/Timeline;)V

    return-void
.end method
