.class Lcom/transsion/tranplayer/AWindow$NativeLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeLock"
.end annotation


# instance fields
.field private buffersGeometryAbort:Z

.field private buffersGeometryConfigured:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/tranplayer/AWindow$NativeLock;->buffersGeometryConfigured:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/tranplayer/AWindow$NativeLock;->buffersGeometryAbort:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/tranplayer/AWindow$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$NativeLock;-><init>()V

    return-void
.end method

.method public static synthetic access$1002(Lcom/transsion/tranplayer/AWindow$NativeLock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/AWindow$NativeLock;->buffersGeometryConfigured:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/transsion/tranplayer/AWindow$NativeLock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tranplayer/AWindow$NativeLock;->buffersGeometryAbort:Z

    return p1
.end method
