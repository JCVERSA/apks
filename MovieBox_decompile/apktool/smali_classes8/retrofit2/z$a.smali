.class final Lretrofit2/z$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lretrofit2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lretrofit2/k;


# direct methods
.method constructor <init>(Lretrofit2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/z$a;->a:Lretrofit2/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Ljava/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/z$a;->a:Lretrofit2/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lretrofit2/y;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lretrofit2/z$a;->a(Lokhttp3/ResponseBody;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
