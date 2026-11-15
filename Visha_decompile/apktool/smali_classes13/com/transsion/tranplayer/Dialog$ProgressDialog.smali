.class public Lcom/transsion/tranplayer/Dialog$ProgressDialog;
.super Lcom/transsion/tranplayer/Dialog$IdDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialog"
.end annotation


# instance fields
.field private final mCancelText:Ljava/lang/String;

.field private final mIndeterminate:Z

.field private mPosition:F


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)V
    .locals 6

    const/4 v3, 0x3

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/tranplayer/Dialog$IdDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-boolean p5, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mIndeterminate:Z

    .line 4
    iput p6, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mPosition:F

    .line 5
    iput-object p7, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;Lcom/transsion/tranplayer/Dialog$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/transsion/tranplayer/Dialog$ProgressDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/transsion/tranplayer/Dialog$ProgressDialog;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->update(FLjava/lang/String;)V

    return-void
.end method

.method private update(FLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mPosition:F

    iput-object p2, p0, Lcom/transsion/tranplayer/Dialog;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic dismiss()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lcom/transsion/tranplayer/Dialog$IdDialog;->dismiss()V

    return-void
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()F
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget p0, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mPosition:F

    return p0
.end method

.method public isCancelable()Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndeterminate()Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean p0, p0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->mIndeterminate:Z

    return p0
.end method
