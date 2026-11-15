.class final Lcom/transsnet/login/email/a0$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/email/a0;->h(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/email/a0;


# direct methods
.method constructor <init>(Lcom/transsnet/login/email/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/email/a0$e;->a:Lcom/transsnet/login/email/a0;

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
    iget-object v0, p0, Lcom/transsnet/login/email/a0$e;->a:Lcom/transsnet/login/email/a0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsnet/login/email/a0;->e(Lcom/transsnet/login/email/a0;)Lcom/transsnet/login/email/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsnet/login/email/a$a;->b(Lcom/transsnet/login/email/a;Lokhttp3/RequestBody;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

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
    invoke-virtual {p0, p1}, Lcom/transsnet/login/email/a0$e;->a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
