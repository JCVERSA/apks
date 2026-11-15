.class final Lcom/transsion/moviedetail/staff/y$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->y(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$e;->a:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$e;->a:Lcom/transsion/moviedetail/staff/y;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->d(Lcom/transsion/moviedetail/staff/y;)Lcom/transsion/moviedetail/staff/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/moviedetail/staff/a$a;->d(Lcom/transsion/moviedetail/staff/a;Lokhttp3/RequestBody;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$e;->a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
