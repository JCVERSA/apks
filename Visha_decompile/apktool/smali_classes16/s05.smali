.class public final synthetic Ls05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/window/layout/WindowLayoutInfo;

.field public final synthetic c:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls05;->b:Landroidx/window/layout/WindowLayoutInfo;

    iput-object p2, p0, Ls05;->c:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ls05;->b:Landroidx/window/layout/WindowLayoutInfo;

    iget-object p0, p0, Ls05;->c:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->a(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    return-void
.end method
