.class public final synthetic Lqoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/TimestampConsumer;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/TimestampAdjustmentShaderProgram;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/TimestampAdjustmentShaderProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqoa;->a:Landroidx/media3/effect/TimestampAdjustmentShaderProgram;

    return-void
.end method


# virtual methods
.method public final onTimestamp(J)V
    .locals 0

    iget-object p0, p0, Lqoa;->a:Landroidx/media3/effect/TimestampAdjustmentShaderProgram;

    invoke-static {p0, p1, p2}, Landroidx/media3/effect/TimestampAdjustmentShaderProgram;->a(Landroidx/media3/effect/TimestampAdjustmentShaderProgram;J)V

    return-void
.end method
