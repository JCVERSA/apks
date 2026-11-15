.class public final synthetic Landroidx/media3/effect/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/FinalShaderProgramWrapper;

.field public final synthetic c:Landroidx/media3/common/util/GlUtil$GlException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/GlUtil$GlException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/q0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iput-object p2, p0, Landroidx/media3/effect/q0;->c:Landroidx/media3/common/util/GlUtil$GlException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/q0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object p0, p0, Landroidx/media3/effect/q0;->c:Landroidx/media3/common/util/GlUtil$GlException;

    invoke-static {v0, p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->d(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/GlUtil$GlException;)V

    return-void
.end method
