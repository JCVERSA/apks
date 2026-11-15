.class public Ltf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljx9;


# instance fields
.field public final a:Lzda;


# direct methods
.method public constructor <init>(Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltf4;->a:Lzda;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Lcom/google/firebase/installations/local/b;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ltf4;->a:Lzda;

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzda;->e(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
