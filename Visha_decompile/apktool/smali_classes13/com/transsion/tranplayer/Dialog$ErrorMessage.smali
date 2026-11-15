.class public Lcom/transsion/tranplayer/Dialog$ErrorMessage;
.super Lcom/transsion/tranplayer/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/tranplayer/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/tranplayer/Dialog$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/Dialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
