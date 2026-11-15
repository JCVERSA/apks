.class public Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lzy/okgo/request/base/ProgressRequestBody$a;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$a;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;->a:Lcom/lzy/okgo/request/base/ProgressRequestBody$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;->a:Lcom/lzy/okgo/request/base/ProgressRequestBody$a;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->g:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;->a:Lcom/lzy/okgo/request/base/ProgressRequestBody$a;

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->g:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-static {p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$b;->a(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a$a;->a:Lcom/lzy/okgo/request/base/ProgressRequestBody$a;

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;->g:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-static {p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->b(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V

    :goto_0
    return-void
.end method
