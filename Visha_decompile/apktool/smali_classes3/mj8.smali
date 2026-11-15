.class public Lmj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmnb;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lvp3;

.field public final d:Lcom/google/firebase/encoders/proto/b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/encoders/proto/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmj8;->a:Z

    iput-boolean v0, p0, Lmj8;->b:Z

    iput-object p1, p0, Lmj8;->d:Lcom/google/firebase/encoders/proto/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lmnb;
    .locals 3

    invoke-virtual {p0}, Lmj8;->c()V

    iget-object v0, p0, Lmj8;->d:Lcom/google/firebase/encoders/proto/b;

    iget-object v1, p0, Lmj8;->c:Lvp3;

    iget-boolean v2, p0, Lmj8;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/b;->g(Lvp3;Ljava/lang/Object;Z)Lzb7;

    return-object p0
.end method

.method public b(Z)Lmnb;
    .locals 3

    invoke-virtual {p0}, Lmj8;->c()V

    iget-object v0, p0, Lmj8;->d:Lcom/google/firebase/encoders/proto/b;

    iget-object v1, p0, Lmj8;->c:Lvp3;

    iget-boolean v2, p0, Lmj8;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/b;->l(Lvp3;ZZ)Lcom/google/firebase/encoders/proto/b;

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lmj8;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmj8;->a:Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lvp3;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmj8;->a:Z

    iput-object p1, p0, Lmj8;->c:Lvp3;

    iput-boolean p2, p0, Lmj8;->b:Z

    return-void
.end method
