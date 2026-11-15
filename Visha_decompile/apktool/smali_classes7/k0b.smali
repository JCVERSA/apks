.class public final synthetic Lk0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0b;->a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    iput p2, p0, Lk0b;->b:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk0b;->a:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    iget p0, p0, Lk0b;->b:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->S(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
