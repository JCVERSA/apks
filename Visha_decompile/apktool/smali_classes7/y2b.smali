.class public final synthetic Ly2b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Landroid/graphics/RenderNode;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RenderNode;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2b;->a:Landroid/graphics/RenderNode;

    iput p2, p0, Ly2b;->b:I

    iput p3, p0, Ly2b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly2b;->a:Landroid/graphics/RenderNode;

    iget v1, p0, Ly2b;->b:I

    iget p0, p0, Ly2b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;->a(Landroid/graphics/RenderNode;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
