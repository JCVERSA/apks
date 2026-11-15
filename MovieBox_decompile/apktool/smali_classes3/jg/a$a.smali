.class public final Ljg/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljg/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/Interceptor;
    .locals 2

    .line 1
    sget-object v0, Lag/a;->a:Lag/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lag/a$a;->b()Lag/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lag/b;->a()Lcom/tn/lib/net/cons/HeaderType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v1, Lcom/tn/lib/net/cons/HeaderType;->ONE_ROOM:Lcom/tn/lib/net/cons/HeaderType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljg/c;

    .line 20
    .line 21
    invoke-direct {v0}, Ljg/c;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljg/c;

    .line 26
    .line 27
    invoke-direct {v0}, Ljg/c;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
