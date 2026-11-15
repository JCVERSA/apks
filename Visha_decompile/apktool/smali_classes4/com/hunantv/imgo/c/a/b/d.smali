.class public Lcom/hunantv/imgo/c/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/c/a/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hunantv/imgo/c/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/hunantv/imgo/c/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/c/a/b/d;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/hunantv/imgo/c/a/b/d;

    invoke-direct {v0}, Lcom/hunantv/imgo/c/a/b/d;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/c/a/b/d;->b:Lcom/hunantv/imgo/c/a/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "ThreadPool"

    invoke-static {p0}, Lcom/hunantv/imgo/c/a/b/d;->b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/a/b/d$a;->b(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/c/a/b/d$a;->a(I)Lcom/hunantv/imgo/c/a/b/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/b/d$a;->a()Lcom/hunantv/imgo/c/a/b/d;

    return-void
.end method

.method public static final b(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/d$a;
    .locals 2

    .line 2
    new-instance v0, Lcom/hunantv/imgo/c/a/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/imgo/c/a/b/d$a;-><init>(Ljava/lang/String;Lcom/hunantv/imgo/c/a/b/d$1;)V

    return-object v0
.end method

.method public static synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/c/a/b/d;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic d()Lcom/hunantv/imgo/c/a/b/d;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/c/a/b/d;->b:Lcom/hunantv/imgo/c/a/b/d;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/c/a/b/a;
    .locals 1

    .line 1
    sget-object p0, Lcom/hunantv/imgo/c/a/b/d;->a:Ljava/util/HashMap;

    const-string v0, "ThreadPool"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/c/a/b/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/imgo/c/a/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/c/a/b/a;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/b/d;->a()Lcom/hunantv/imgo/c/a/b/a;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/hunantv/imgo/c/a/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
