.class public final synthetic Landroidx/media3/effect/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgj;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/ByteBufferConcurrentEffect;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/ByteBufferConcurrentEffect;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/e;->a:Landroidx/media3/effect/ByteBufferConcurrentEffect;

    iput-wide p2, p0, Landroidx/media3/effect/e;->b:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lim5;
    .locals 3

    iget-object v0, p0, Landroidx/media3/effect/e;->a:Landroidx/media3/effect/ByteBufferConcurrentEffect;

    iget-wide v1, p0, Landroidx/media3/effect/e;->b:J

    check-cast p1, Landroidx/media3/effect/ByteBufferGlEffect$Image;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/effect/ByteBufferConcurrentEffect;->a(Landroidx/media3/effect/ByteBufferConcurrentEffect;JLandroidx/media3/effect/ByteBufferGlEffect$Image;)Lim5;

    move-result-object p0

    return-object p0
.end method
