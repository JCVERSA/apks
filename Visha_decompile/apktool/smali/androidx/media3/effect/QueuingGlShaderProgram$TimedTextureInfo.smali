.class Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/QueuingGlShaderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimedTextureInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final presentationTimeUs:J

.field final task:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field

.field final textureInfo:Landroidx/media3/common/GlTextureInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/common/GlTextureInfo;JLjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlTextureInfo;",
            "J",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->textureInfo:Landroidx/media3/common/GlTextureInfo;

    iput-wide p2, p0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->presentationTimeUs:J

    iput-object p4, p0, Landroidx/media3/effect/QueuingGlShaderProgram$TimedTextureInfo;->task:Ljava/util/concurrent/Future;

    return-void
.end method
