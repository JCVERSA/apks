.class public abstract Lj3;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Lre5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lj3;->b()I

    move-result p0

    return p0
.end method
