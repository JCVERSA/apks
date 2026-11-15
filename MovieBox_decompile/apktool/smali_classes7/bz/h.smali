.class public Lbz/h;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbz/h;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lbz/i;
    .locals 3

    .line 1
    invoke-static {}, Lbz/l;->d()Lbz/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbz/l;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/gson/Gson;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lbz/h;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lbz/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lbz/i;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
