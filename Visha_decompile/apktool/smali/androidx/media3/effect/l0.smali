.class public final synthetic Landroidx/media3/effect/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/FinalShaderProgramWrapper;

.field public final synthetic c:Ljava/lang/Exception;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/Exception;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/l0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iput-object p2, p0, Landroidx/media3/effect/l0;->c:Ljava/lang/Exception;

    iput-wide p3, p0, Landroidx/media3/effect/l0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/effect/l0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object v1, p0, Landroidx/media3/effect/l0;->c:Ljava/lang/Exception;

    iget-wide v2, p0, Landroidx/media3/effect/l0;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/effect/FinalShaderProgramWrapper;->e(Landroidx/media3/effect/FinalShaderProgramWrapper;Ljava/lang/Exception;J)V

    return-void
.end method
