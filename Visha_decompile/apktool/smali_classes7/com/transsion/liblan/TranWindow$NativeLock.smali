.class Lcom/transsion/liblan/TranWindow$NativeLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranWindow;
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/liblan/TranWindow$NativeLock;->buffersGeometryConfigured:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/liblan/TranWindow$NativeLock;->buffersGeometryAbort:Z

    return-void
.end method

.method public synthetic constructor <init>(Lk5b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$NativeLock;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/TranWindow$NativeLock;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/liblan/TranWindow$NativeLock;->buffersGeometryAbort:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/TranWindow$NativeLock;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/liblan/TranWindow$NativeLock;->buffersGeometryConfigured:Z

    return-void
.end method
