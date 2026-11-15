.class public abstract Lxo0;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:Lzo0;


# direct methods
.method public constructor <init>(ZLzo0;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lxo0;->c:Lzo0;

    return-void
.end method


# virtual methods
.method public b()Lzo0;
    .locals 0

    iget-object p0, p0, Lxo0;->c:Lzo0;

    return-object p0
.end method
