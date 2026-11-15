.class public final synthetic Lr05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr05;->b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr05;->b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->b(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
