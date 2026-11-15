.class public Lcom/transsion/transfer/androidasync/AsyncSSLException;
.super Ljava/lang/Exception;
.source "source.java"


# instance fields
.field private mIgnore:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "Peer not trusted by any of the system trust managers."

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLException;->mIgnore:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getIgnore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLException;->mIgnore:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIgnore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLException;->mIgnore:Z

    .line 2
    .line 3
    return-void
.end method
