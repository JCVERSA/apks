.class public final synthetic Lanc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

.field public final synthetic c:Landroidx/window/area/WindowAreaSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanc;->b:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

    iput-object p2, p0, Lanc;->c:Landroidx/window/area/WindowAreaSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lanc;->b:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

    iget-object p0, p0, Lanc;->c:Landroidx/window/area/WindowAreaSession;

    invoke-static {v0, p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->a(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V

    return-void
.end method
