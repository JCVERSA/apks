.class public final synthetic Lx1b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1b;->a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    iput p2, p0, Lx1b;->b:I

    iput p3, p0, Lx1b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx1b;->a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    iget v1, p0, Lx1b;->b:I

    iget p0, p0, Lx1b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->c(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
