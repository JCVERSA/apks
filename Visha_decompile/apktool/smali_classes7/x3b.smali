.class public final synthetic Lx3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3b;->a:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

    iput-object p2, p0, Lx3b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lx3b;->c:Z

    iput p4, p0, Lx3b;->d:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx3b;->a:Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;

    iget-object v1, p0, Lx3b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lx3b;->c:Z

    iget p0, p0, Lx3b;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;->a(Lcom/transsion/hubsdk/core/content/om/TranThubOverlayManager;Ljava/lang/String;ZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
