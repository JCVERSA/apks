.class public final Lcom/lzy/okgo/request/base/ProgressRequestBody$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public f:Lcom/lzy/okgo/model/Progress;

.field public final synthetic g:Lcom/lzy/okgo/request/base/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->g:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    new-instance p2, Lcom/lzy/okgo/model/Progress;

    invoke-direct {p2}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->f:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->contentLength()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->f:Lcom/lzy/okgo/model/Progress;

    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$a;)V

    invoke-static {p1, p2, p3, v0}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    return-void
.end method
