.class public abstract Lcom/transsion/tranplayer/Dialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/Dialog$ProgressDialog;,
        Lcom/transsion/tranplayer/Dialog$QuestionDialog;,
        Lcom/transsion/tranplayer/Dialog$LoginDialog;,
        Lcom/transsion/tranplayer/Dialog$IdDialog;,
        Lcom/transsion/tranplayer/Dialog$ErrorMessage;,
        Lcom/transsion/tranplayer/Dialog$Callbacks;
    }
.end annotation


# static fields
.field public static final TYPE_ERROR:I = 0x0

.field public static final TYPE_LOGIN:I = 0x1

.field public static final TYPE_PROGRESS:I = 0x3

.field public static final TYPE_QUESTION:I = 0x2

.field private static sCallbacks:Lcom/transsion/tranplayer/Dialog$Callbacks;

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

    iput p1, p0, Lcom/transsion/tranplayer/Dialog;->mType:I

    iput-object p2, p0, Lcom/transsion/tranplayer/Dialog;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/tranplayer/Dialog;->mText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;
    .locals 1

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sCallbacks:Lcom/transsion/tranplayer/Dialog$Callbacks;

    return-object v0
.end method

.method private static cancelFromNative(Lcom/transsion/tranplayer/Dialog;)V
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/tranplayer/Dialog$5;

    invoke-direct {v1, p0}, Lcom/transsion/tranplayer/Dialog$5;-><init>(Lcom/transsion/tranplayer/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static displayErrorFromNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/tranplayer/Dialog$ErrorMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/tranplayer/Dialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Dialog$1;)V

    sget-object p0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/tranplayer/Dialog$1;

    invoke-direct {p1, v0}, Lcom/transsion/tranplayer/Dialog$1;-><init>(Lcom/transsion/tranplayer/Dialog$ErrorMessage;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/tranplayer/Dialog;
    .locals 9

    new-instance v8, Lcom/transsion/tranplayer/Dialog$LoginDialog;

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/tranplayer/Dialog$LoginDialog;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/tranplayer/Dialog$1;)V

    sget-object p0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/tranplayer/Dialog$2;

    invoke-direct {p1, v8}, Lcom/transsion/tranplayer/Dialog$2;-><init>(Lcom/transsion/tranplayer/Dialog$LoginDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v8
.end method

.method private static displayProgressFromNative(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)Lcom/transsion/tranplayer/Dialog;
    .locals 10

    new-instance v9, Lcom/transsion/tranplayer/Dialog$ProgressDialog;

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/tranplayer/Dialog$ProgressDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;Lcom/transsion/tranplayer/Dialog$1;)V

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/tranplayer/Dialog$4;

    invoke-direct {v1, v9}, Lcom/transsion/tranplayer/Dialog$4;-><init>(Lcom/transsion/tranplayer/Dialog$ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v9
.end method

.method private static displayQuestionFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/tranplayer/Dialog;
    .locals 11

    new-instance v10, Lcom/transsion/tranplayer/Dialog$QuestionDialog;

    const/4 v9, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/transsion/tranplayer/Dialog$QuestionDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Dialog$1;)V

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/tranplayer/Dialog$3;

    invoke-direct {v1, v10}, Lcom/transsion/tranplayer/Dialog$3;-><init>(Lcom/transsion/tranplayer/Dialog$QuestionDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v10
.end method

.method private static native nativeSetCallbacks(Lcom/transsion/tranplayer/LibVLC;Z)V
.end method

.method public static setCallbacks(Lcom/transsion/tranplayer/LibVLC;Lcom/transsion/tranplayer/Dialog$Callbacks;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    :cond_0
    sput-object p1, Lcom/transsion/tranplayer/Dialog;->sCallbacks:Lcom/transsion/tranplayer/Dialog$Callbacks;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/tranplayer/Dialog;->nativeSetCallbacks(Lcom/transsion/tranplayer/LibVLC;Z)V

    return-void
.end method

.method private static updateProgressFromNative(Lcom/transsion/tranplayer/Dialog;FLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsion/tranplayer/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/tranplayer/Dialog$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/tranplayer/Dialog$6;-><init>(Lcom/transsion/tranplayer/Dialog;FLjava/lang/String;)V

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

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog;->mContext:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget p0, p0, Lcom/transsion/tranplayer/Dialog;->mType:I

    return p0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/transsion/tranplayer/Dialog;->mContext:Ljava/lang/Object;

    return-void
.end method
