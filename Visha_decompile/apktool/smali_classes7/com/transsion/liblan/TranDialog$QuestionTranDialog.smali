.class public Lcom/transsion/liblan/TranDialog$QuestionTranDialog;
.super Lcom/transsion/liblan/TranDialog$IdTranDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionTranDialog"
.end annotation


# static fields
.field public static final TYPE_ERROR:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_WARNING:I = 0x1


# instance fields
.field private final mAction1Text:Ljava/lang/String;

.field private final mAction2Text:Ljava/lang/String;

.field private final mCancelText:Ljava/lang/String;

.field private final mQuestionType:I


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/liblan/TranDialog$IdTranDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p5, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mQuestionType:I

    .line 4
    iput-object p6, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mCancelText:Ljava/lang/String;

    .line 5
    iput-object p7, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mAction1Text:Ljava/lang/String;

    .line 6
    iput-object p8, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mAction2Text:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzwa;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativePostAction(JI)V
.end method


# virtual methods
.method public bridge synthetic dismiss()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lcom/transsion/liblan/TranDialog$IdTranDialog;->dismiss()V

    return-void
.end method

.method public getAction1Text()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mAction1Text:Ljava/lang/String;

    return-object p0
.end method

.method public getAction2Text()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mAction2Text:Ljava/lang/String;

    return-object p0
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mCancelText:Ljava/lang/String;

    return-object p0
.end method

.method public getQuestionType()I
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget p0, p0, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->mQuestionType:I

    return p0
.end method

.method public postAction(I)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lcom/transsion/liblan/TranDialog$IdTranDialog;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;->nativePostAction(JI)V

    iput-wide v2, p0, Lcom/transsion/liblan/TranDialog$IdTranDialog;->mId:J

    :cond_0
    return-void
.end method
