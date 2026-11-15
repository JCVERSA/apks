.class Lcom/alibaba/fastjson/JSONPath$g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g0"
.end annotation


# static fields
.field public static final c:Lcom/alibaba/fastjson/JSONPath$g0;

.field public static final d:Lcom/alibaba/fastjson/JSONPath$g0;

.field public static final e:Lcom/alibaba/fastjson/JSONPath$g0;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->c:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 8
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->d:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 16
    .line 17
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$g0;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson/JSONPath$g0;-><init>(ZZ)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->e:Lcom/alibaba/fastjson/JSONPath$g0;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$g0;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$g0;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$g0;->a:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->k(Ljava/lang/Object;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->c(Ljava/lang/Object;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
