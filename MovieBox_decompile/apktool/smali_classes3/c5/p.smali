.class public final Lc5/p;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/alibaba/fastjson/util/d;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/p;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lc5/p;->b:Lcom/alibaba/fastjson/util/d;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->k()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lc5/p;->c:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/p;->b:Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    iget v0, v0, Lcom/alibaba/fastjson/util/d;->i:I

    .line 4
    .line 5
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/p;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/p;->b:Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/d;->r:Z

    .line 4
    .line 5
    return v0
.end method
