.class public final synthetic Le5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

.field public final synthetic b:I

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5b;->a:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    iput p2, p0, Le5b;->b:I

    iput-object p3, p0, Le5b;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le5b;->a:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    iget v1, p0, Le5b;->b:I

    iget-object p0, p0, Le5b;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->c(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
