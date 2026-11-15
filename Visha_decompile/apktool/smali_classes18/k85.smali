.class public final Lk85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd9;


# instance fields
.field public final a:Lpv0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpv0;

    sget-object v1, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lpv0;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lk85;->a:Lpv0;

    return-void
.end method


# virtual methods
.method public a([CII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk85;->a:Lpv0;

    invoke-virtual {p0, p1, p2, p3}, Lpv0;->d([CII)I

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lk85;->a:Lpv0;

    invoke-virtual {p0}, Lpv0;->e()V

    return-void
.end method
