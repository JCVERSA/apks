.class final Lretrofit2/u$a;
.super Lretrofit2/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final d:Lretrofit2/e;


# direct methods
.method constructor <init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;Lretrofit2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/u;-><init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lretrofit2/u$a;->d:Lretrofit2/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected c(Lretrofit2/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lretrofit2/u$a;->d:Lretrofit2/e;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lretrofit2/e;->b(Lretrofit2/d;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
