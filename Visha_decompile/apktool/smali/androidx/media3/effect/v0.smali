.class public final synthetic Landroidx/media3/effect/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/MultipleInputVideoGraph$1;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/MultipleInputVideoGraph$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/v0;->b:Landroidx/media3/effect/MultipleInputVideoGraph$1;

    iput p2, p0, Landroidx/media3/effect/v0;->c:I

    iput p3, p0, Landroidx/media3/effect/v0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/v0;->b:Landroidx/media3/effect/MultipleInputVideoGraph$1;

    iget v1, p0, Landroidx/media3/effect/v0;->c:I

    iget p0, p0, Landroidx/media3/effect/v0;->d:I

    invoke-static {v0, v1, p0}, Landroidx/media3/effect/MultipleInputVideoGraph$1;->d(Landroidx/media3/effect/MultipleInputVideoGraph$1;II)V

    return-void
.end method
