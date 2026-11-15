.class public final synthetic Landroidx/media3/effect/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/QueuingGlShaderProgram;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/QueuingGlShaderProgram;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/z0;->b:Landroidx/media3/effect/QueuingGlShaderProgram;

    iput-object p2, p0, Landroidx/media3/effect/z0;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/z0;->b:Landroidx/media3/effect/QueuingGlShaderProgram;

    iget-object p0, p0, Landroidx/media3/effect/z0;->c:Ljava/lang/Exception;

    invoke-static {v0, p0}, Landroidx/media3/effect/QueuingGlShaderProgram;->a(Landroidx/media3/effect/QueuingGlShaderProgram;Ljava/lang/Exception;)V

    return-void
.end method
