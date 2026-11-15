.class La5/h$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La5/h;


# direct methods
.method constructor <init>(La5/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/h$a;->a:La5/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .line 1
    iget-object v0, p0, La5/h$a;->a:La5/h;

    .line 2
    .line 3
    invoke-static {v0}, La5/h;->a(La5/h;)Lcom/alibaba/fastjson/util/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ljava/sql/Timestamp;

    .line 8
    .line 9
    sget-object v2, Lb5/i3;->c:Lb5/i3;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, La5/h$a;->a:La5/h;

    .line 15
    .line 16
    invoke-static {v0}, La5/h;->a(La5/h;)Lcom/alibaba/fastjson/util/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Ljava/sql/Date;

    .line 21
    .line 22
    sget-object v2, Lb5/i3;->b:Lb5/i3;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, La5/h$a;->a:La5/h;

    .line 28
    .line 29
    invoke-static {v0}, La5/h;->a(La5/h;)Lcom/alibaba/fastjson/util/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-class v1, Ljava/sql/Time;

    .line 34
    .line 35
    sget-object v2, Lb5/l3;->a:Lb5/l3;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, La5/h$a;->a:La5/h;

    .line 41
    .line 42
    invoke-static {v0}, La5/h;->a(La5/h;)Lcom/alibaba/fastjson/util/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Ljava/util/Date;

    .line 47
    .line 48
    sget-object v2, Lc5/c0;->a:Lc5/c0;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La5/h$a;->a()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
