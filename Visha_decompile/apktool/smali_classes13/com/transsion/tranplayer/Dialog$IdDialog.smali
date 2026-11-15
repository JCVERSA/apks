.class public abstract Lcom/transsion/tranplayer/Dialog$IdDialog;
.super Lcom/transsion/tranplayer/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IdDialog"
.end annotation


# instance fields
.field protected mId:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, Lcom/transsion/tranplayer/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/transsion/tranplayer/Dialog$IdDialog;->mId:J

    return-void
.end method

.method private native nativeDismiss(J)V
.end method


# virtual methods
.method public dismiss()V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v0, p0, Lcom/transsion/tranplayer/Dialog$IdDialog;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/transsion/tranplayer/Dialog$IdDialog;->nativeDismiss(J)V

    iput-wide v2, p0, Lcom/transsion/tranplayer/Dialog$IdDialog;->mId:J

    :cond_0
    return-void
.end method
