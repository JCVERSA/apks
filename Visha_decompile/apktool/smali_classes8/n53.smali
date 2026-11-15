.class public Ln53;
.super Lz43;
.source "SourceFile"


# instance fields
.field public final d:Li53;


# direct methods
.method public constructor <init>(Li53;Lu43;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lz43;-><init>(ZLu43;)V

    invoke-virtual {p2, p1}, Lu43;->h(Li53;)Li53;

    move-result-object p1

    iput-object p1, p0, Ln53;->d:Li53;

    return-void
.end method


# virtual methods
.method public c()Li53;
    .locals 0

    iget-object p0, p0, Ln53;->d:Li53;

    return-object p0
.end method
