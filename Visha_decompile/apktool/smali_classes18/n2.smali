.class public abstract Ln2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lah;
.end method

.method public abstract c()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Ln2;->b()Lah;

    move-result-object p0

    invoke-virtual {p0}, Lah;->b()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ln2;->b()Lah;

    move-result-object p0

    invoke-virtual {p0}, Lah;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
