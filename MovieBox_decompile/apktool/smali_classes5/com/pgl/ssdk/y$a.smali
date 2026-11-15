.class final Lcom/pgl/ssdk/y$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/y;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/pgl/ssdk/y;->a(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p1, v0}, Lcom/pgl/ssdk/y;->a(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lcom/pgl/ssdk/y;->a(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
