.class public Lz94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv43;


# instance fields
.field public final a:Laa4;

.field public final b:Lj53;


# direct methods
.method public constructor <init>(Lt43;Laa4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz94;->a:Laa4;

    new-instance v0, Ls19;

    invoke-virtual {p2}, Laa4;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    invoke-direct {v0, p1}, Ls19;-><init>(Lw43;)V

    iput-object v0, p0, Lz94;->b:Lj53;

    return-void
.end method
