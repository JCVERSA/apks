.class public Lcom/hunantv/imgo/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/mgtv/data/aphone/core/c/d;


# instance fields
.field protected a:Lcom/hunantv/imgo/report/d;

.field protected final b:Lcom/mgtv/data/aphone/core/c/d;

.field protected c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/c/d;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/d;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/a/b;->d:Lcom/mgtv/data/aphone/core/c/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/imgo/a/b;->d:Lcom/mgtv/data/aphone/core/c/d;

    iput-object v0, p0, Lcom/hunantv/imgo/a/b;->b:Lcom/mgtv/data/aphone/core/c/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/b;->c()V

    iput-object p1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    return-void
.end method
