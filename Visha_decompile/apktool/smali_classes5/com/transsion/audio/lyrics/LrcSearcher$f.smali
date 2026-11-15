.class public Lcom/transsion/audio/lyrics/LrcSearcher$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->r(Ljava/lang/String;Z)Lmc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/audio/lyrics/LrcSearcher;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->c:Lcom/transsion/audio/lyrics/LrcSearcher;

    iput-object p2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lrc7;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->c:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->h(Lcom/transsion/audio/lyrics/LrcSearcher;)Lou5;

    move-result-object v0

    new-instance v1, Ll22;

    iget-object v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->c:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/transsion/audio/lyrics/LrcSearcher;->l(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audio/lyrics/LrcSearcher;->k(Lcom/transsion/audio/lyrics/LrcSearcher;[B)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-direct {v1, v2}, Ll22;-><init>(Ljava/io/BufferedReader;)V

    iget-boolean v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->b:Z

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$f;->c:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->d(Lcom/transsion/audio/lyrics/LrcSearcher;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lou5;->a(Lpu5;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0}, Lk93;->onError(Ljava/lang/Throwable;)V

    :goto_0
    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method
