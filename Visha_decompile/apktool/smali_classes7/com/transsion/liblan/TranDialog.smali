.class public abstract Lcom/transsion/liblan/TranDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/TranDialog$Callbacks;,
        Lcom/transsion/liblan/TranDialog$ErrorMessage;,
        Lcom/transsion/liblan/TranDialog$LoginTranDialog;,
        Lcom/transsion/liblan/TranDialog$QuestionTranDialog;,
        Lcom/transsion/liblan/TranDialog$ProgressTranDialog;,
        Lcom/transsion/liblan/TranDialog$IdTranDialog;
    }
.end annotation


# static fields
.field public static final TYPE_ERROR:I = 0x0

.field public static final TYPE_LOGIN:I = 0x1

.field public static final TYPE_PROGRESS:I = 0x3

.field public static final TYPE_QUESTION:I = 0x2

.field private static sCallbacks:Lcom/transsion/liblan/TranDialog$Callbacks;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Ljava/lang/Object;

.field protected mText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field protected final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/liblan/TranDialog;->mType:I

    iput-object p2, p0, Lcom/transsion/liblan/TranDialog;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/liblan/TranDialog;->mText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/liblan/TranDialog$Callbacks;
    .locals 1

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sCallbacks:Lcom/transsion/liblan/TranDialog$Callbacks;

    return-object v0
.end method

.method private static cancelDialogFromNative(Lcom/transsion/liblan/TranDialog;)V
    .locals 2

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/liblan/TranDialog$5;

    invoke-direct {v1, p0}, Lcom/transsion/liblan/TranDialog$5;-><init>(Lcom/transsion/liblan/TranDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static displayErrorMessageFromNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/liblan/TranDialog$ErrorMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/liblan/TranDialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lzwa;)V

    sget-object p0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/liblan/TranDialog$1;

    invoke-direct {p1, v0}, Lcom/transsion/liblan/TranDialog$1;-><init>(Lcom/transsion/liblan/TranDialog$ErrorMessage;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/liblan/TranDialog;
    .locals 9

    new-instance v8, Lcom/transsion/liblan/TranDialog$LoginTranDialog;

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/liblan/TranDialog$LoginTranDialog;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLzwa;)V

    sget-object p0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/liblan/TranDialog$2;

    invoke-direct {p1, v8}, Lcom/transsion/liblan/TranDialog$2;-><init>(Lcom/transsion/liblan/TranDialog$LoginTranDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v8
.end method

.method private static displayProgressFromNative(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)Lcom/transsion/liblan/TranDialog;
    .locals 10

    new-instance v9, Lcom/transsion/liblan/TranDialog$ProgressTranDialog;

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/liblan/TranDialog$ProgressTranDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;Lzwa;)V

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/liblan/TranDialog$4;

    invoke-direct {v1, v9}, Lcom/transsion/liblan/TranDialog$4;-><init>(Lcom/transsion/liblan/TranDialog$ProgressTranDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v9
.end method

.method private static displayQuestionFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/liblan/TranDialog;
    .locals 11

    new-instance v10, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;

    const/4 v9, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/transsion/liblan/TranDialog$QuestionTranDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzwa;)V

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/liblan/TranDialog$3;

    invoke-direct {v1, v10}, Lcom/transsion/liblan/TranDialog$3;-><init>(Lcom/transsion/liblan/TranDialog$QuestionTranDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v10
.end method

.method private static native nativeSetCallbacks(Lcom/transsion/liblan/interfaces/ITranLibLAN;Z)V
.end method

.method public static setCallbacks(Lcom/transsion/liblan/interfaces/ITranLibLAN;Lcom/transsion/liblan/TranDialog$Callbacks;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    :cond_0
    sput-object p1, Lcom/transsion/liblan/TranDialog;->sCallbacks:Lcom/transsion/liblan/TranDialog$Callbacks;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/liblan/TranDialog;->nativeSetCallbacks(Lcom/transsion/liblan/interfaces/ITranLibLAN;Z)V

    return-void
.end method

.method private static updateProgressFromNative(Lcom/transsion/liblan/TranDialog;FLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsion/liblan/TranDialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/liblan/TranDialog$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/liblan/TranDialog$6;-><init>(Lcom/transsion/liblan/TranDialog;FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getContext()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog;->mContext:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget p0, p0, Lcom/transsion/liblan/TranDialog;->mType:I

    return p0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/transsion/liblan/TranDialog;->mContext:Ljava/lang/Object;

    return-void
.end method
