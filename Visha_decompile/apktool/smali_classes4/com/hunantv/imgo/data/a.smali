.class public Lcom/hunantv/imgo/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/hunantv/imgo/data/a;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/data/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/imgo/data/a;->b:Lcom/hunantv/imgo/data/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hunantv/imgo/data/a;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/a;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/data/a;->b:Lcom/hunantv/imgo/data/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/hunantv/imgo/data/a;->b:Lcom/hunantv/imgo/data/a;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/hunantv/imgo/data/a;->a:Z

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/data/a;->a:Z

    return p0
.end method
