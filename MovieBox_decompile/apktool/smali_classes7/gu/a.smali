.class public final synthetic Lgu/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgu/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lgu/a;->b:Ljava/lang/Integer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lgu/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lgu/a;->b:Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p1, Lcom/therouter/router/Navigator;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lgu/c;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
