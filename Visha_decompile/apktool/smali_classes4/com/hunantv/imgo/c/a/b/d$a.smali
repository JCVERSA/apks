.class public final Lcom/hunantv/imgo/c/a/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/c/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/hunantv/imgo/c/a;

.field private e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->b:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "groupName \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/hunantv/imgo/c/a/b/d$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/c/a/b/d$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/hunantv/imgo/c/a/b/d$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->c:I

    return-object p0
.end method

.method public a()Lcom/hunantv/imgo/c/a/b/d;
    .locals 2

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/c/a/b/d;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/hunantv/imgo/c/a/b/d$a;->a:I

    invoke-static {v0}, Lcom/hunantv/imgo/c/a/b/b;->a(I)Lcom/hunantv/imgo/c/a/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/b$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/b$a;

    move-result-object v0

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->c:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/b$a;->a(I)Lcom/hunantv/imgo/c/a/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->d:Lcom/hunantv/imgo/c/a;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/b$a;->a(Lcom/hunantv/imgo/c/a;)Lcom/hunantv/imgo/c/a/b/b$a;

    move-result-object v0

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->e:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/c/a/b/b$a;->b(I)Lcom/hunantv/imgo/c/a/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/b$a;->a()Lcom/hunantv/imgo/c/a/b/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/b;->a()Lcom/hunantv/imgo/c/a/b/a;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/c/a/b/d;->c()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/hunantv/imgo/c/a/b/d$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/c/a/b/d;->d()Lcom/hunantv/imgo/c/a/b/d;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lcom/hunantv/imgo/c/a/b/d$a;
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/d$a;->a:I

    return-object p0
.end method
