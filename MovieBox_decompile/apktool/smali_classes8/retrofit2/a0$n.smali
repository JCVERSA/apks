.class final Lretrofit2/a0$n;
.super Lretrofit2/a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field private final a:Lretrofit2/k;

.field private final b:Z


# direct methods
.method constructor <init>(Lretrofit2/k;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/a0$n;->a:Lretrofit2/k;

    .line 5
    .line 6
    iput-boolean p2, p0, Lretrofit2/a0$n;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lretrofit2/a0$n;->a:Lretrofit2/k;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iget-boolean v1, p0, Lretrofit2/a0$n;->b:Z

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1}, Lretrofit2/h0;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
