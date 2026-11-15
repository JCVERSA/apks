.class public final synthetic Landroidx/window/area/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroidx/window/area/WindowAreaControllerImpl;

.field public final synthetic c:Lgh8;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Lgh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/a;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/a;->c:Lgh8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/area/a;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object p0, p0, Landroidx/window/area/a;->c:Lgh8;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1;->h(Landroidx/window/area/WindowAreaControllerImpl;Lgh8;Ljava/lang/Integer;)V

    return-void
.end method
