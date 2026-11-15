.class public final synthetic Lzmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;


# direct methods
.method public synthetic constructor <init>(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzmc;->b:I

    iput p2, p0, Lzmc;->c:I

    iput-object p3, p0, Lzmc;->d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lzmc;->b:I

    iget v1, p0, Lzmc;->c:I

    iget-object p0, p0, Lzmc;->d:Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;

    invoke-static {v0, v1, p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->a(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;)V

    return-void
.end method
