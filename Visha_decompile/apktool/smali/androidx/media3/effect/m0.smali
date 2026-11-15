.class public final synthetic Landroidx/media3/effect/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/FinalShaderProgramWrapper;

.field public final synthetic c:Landroidx/media3/common/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/m0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iput-object p2, p0, Landroidx/media3/effect/m0;->c:Landroidx/media3/common/util/Size;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/m0;->b:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object p0, p0, Landroidx/media3/effect/m0;->c:Landroidx/media3/common/util/Size;

    invoke-static {v0, p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->a(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/util/Size;)V

    return-void
.end method
