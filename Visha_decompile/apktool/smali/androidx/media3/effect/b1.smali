.class public final synthetic Landroidx/media3/effect/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/SingleInputVideoGraph$1;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/SingleInputVideoGraph$1;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/b1;->b:Landroidx/media3/effect/SingleInputVideoGraph$1;

    iput p2, p0, Landroidx/media3/effect/b1;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/b1;->b:Landroidx/media3/effect/SingleInputVideoGraph$1;

    iget p0, p0, Landroidx/media3/effect/b1;->c:F

    invoke-static {v0, p0}, Landroidx/media3/effect/SingleInputVideoGraph$1;->a(Landroidx/media3/effect/SingleInputVideoGraph$1;F)V

    return-void
.end method
