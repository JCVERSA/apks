.class Lcom/hunantv/imgo/log/b/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/log/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/log/b/c;->h()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuffer;

.field final synthetic b:Lcom/hunantv/imgo/log/b/c;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/log/b/c;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/log/b/c$4;->b:Lcom/hunantv/imgo/log/b/c;

    iput-object p2, p0, Lcom/hunantv/imgo/log/b/c$4;->a:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/hunantv/imgo/log/b/c$4;->a:Ljava/lang/StringBuffer;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/log/b/c$4;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
