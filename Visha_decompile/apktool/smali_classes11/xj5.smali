.class public abstract Lxj5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxj5$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Z)Lcec;
    .locals 1

    new-instance v0, Lxj5$a;

    invoke-direct {v0, p0, p1}, Lxj5$a;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static b()[F
    .locals 1

    invoke-static {}, Lcom/transsion/dragdrop/DragDropManager;->instance()Lcom/transsion/dragdrop/DragDropManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dragdrop/DragDropManager;->getDragDropLocation()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
