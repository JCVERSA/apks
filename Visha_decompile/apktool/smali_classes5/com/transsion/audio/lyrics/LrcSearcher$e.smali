.class public Lcom/transsion/audio/lyrics/LrcSearcher$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->B(Ljava/lang/String;)Lmc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/audio/lyrics/LrcSearcher;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    iput-object p2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lrc7;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->h(Lcom/transsion/audio/lyrics/LrcSearcher;)Lou5;

    move-result-object v0

    new-instance v1, Ll22;

    iget-object v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->a:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/audio/lyrics/LrcSearcher;->k(Lcom/transsion/audio/lyrics/LrcSearcher;[B)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-direct {v1, v2}, Ll22;-><init>(Ljava/io/BufferedReader;)V

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->d(Lcom/transsion/audio/lyrics/LrcSearcher;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lou5;->a(Lpu5;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->h(Lcom/transsion/audio/lyrics/LrcSearcher;)Lou5;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$e;->b:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->d(Lcom/transsion/audio/lyrics/LrcSearcher;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lou5;->b(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method
