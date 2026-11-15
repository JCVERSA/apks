.class public Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor$STREAMING_STATE;
    }
.end annotation


# static fields
.field private static final ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/common/api/TranAdapter<",
            "Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAMING_STATE_CANCEL:I = 0x2

.field public static final STREAMING_STATE_END:I = 0x3

.field public static final STREAMING_STATE_START:I = 0x0

.field public static final STREAMING_STATE_UPDATE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/api/TranAdapter;

    new-instance v1, Ldya;

    invoke-direct {v1}, Ldya;-><init>()V

    new-instance v2, Leya;

    invoke-direct {v2}, Leya;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/transsion/hubsdk/common/api/TranAdapter;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEndAnimParams(I)V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setEndAnimParams(I)V

    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    return-void
.end method

.method public setStartAnimParams(JJII)V
    .locals 7

    sget-object p0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v0, "37.5.1.1"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setStartAnimParams(JJII)V

    return-void
.end method

.method public setUpdateAnimParams(IIJJIFFF)V
    .locals 12

    sget-object v0, Lcom/transsion/hubsdk/api/text/TranStreamingAnimProcessor;->ADAPTER:Lcom/transsion/hubsdk/common/api/TranAdapter;

    const-string v1, "37.5.1.1"

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/common/api/TranAdapter;->getImpl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;->setUpdateAnimParams(IIJJIFFF)V

    return-void
.end method
