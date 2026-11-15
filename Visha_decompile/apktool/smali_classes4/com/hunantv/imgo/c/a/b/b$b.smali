.class Lcom/hunantv/imgo/c/a/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/c/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Lcom/hunantv/imgo/c/a;

.field e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/b$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/c/a/b/b;
    .locals 2

    new-instance v0, Lcom/hunantv/imgo/c/a/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hunantv/imgo/c/a/b/b;-><init>(Lcom/hunantv/imgo/c/a/b/b$b;Lcom/hunantv/imgo/c/a/b/b$1;)V

    return-object v0
.end method
