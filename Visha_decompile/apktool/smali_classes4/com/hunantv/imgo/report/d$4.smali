.class Lcom/hunantv/imgo/report/d$4;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/http/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/report/d;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/report/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/report/d$4;->a:Lcom/hunantv/imgo/report/d;

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/report/d$4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/hunantv/imgo/report/d$4;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/report/d$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
