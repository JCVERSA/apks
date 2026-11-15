.class public final synthetic Landroidx/media3/effect/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe8;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/effect/o;->b:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/media3/effect/o;->b:J

    check-cast p1, Landroidx/media3/effect/DefaultVideoCompositor$InputFrameInfo;

    invoke-static {v0, v1, p1}, Landroidx/media3/effect/DefaultVideoCompositor;->b(JLandroidx/media3/effect/DefaultVideoCompositor$InputFrameInfo;)Z

    move-result p0

    return p0
.end method
