.class final Lcom/squareup/okhttp/internal/framed/FramedConnection$b$a;
.super Lcom/squareup/okhttp/internal/framed/FramedConnection$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedConnection$b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lcom/squareup/okhttp/internal/framed/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/a;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
