.class public abstract Lz44;
.super Lc54;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc54;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract f()Ljava/util/Iterator;
.end method

.method public hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lz44;->f()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz44;->f()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
