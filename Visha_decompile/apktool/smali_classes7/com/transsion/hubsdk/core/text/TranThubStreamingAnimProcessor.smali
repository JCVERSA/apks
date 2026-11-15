.class public Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;


# instance fields
.field private final mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    invoke-direct {v0}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    return-void
.end method


# virtual methods
.method public handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEndAnimParams(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->setEndAnimParams(I)V

    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    return-void
.end method

.method public setStartAnimParams(JJII)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->setStartAnimParams(JJII)V

    return-void
.end method

.method public setUpdateAnimParams(IIJJIFFF)V
    .locals 11

    move-object v0, p0

    iget-object v0, v0, Lcom/transsion/hubsdk/core/text/TranThubStreamingAnimProcessor;->mProcessor:Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/transsion/hubsdk/text/TranStreamingAnimProcessor;->setUpdateAnimParams(IIJJIFFF)V

    return-void
.end method
