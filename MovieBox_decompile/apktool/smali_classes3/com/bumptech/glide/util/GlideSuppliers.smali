.class public final Lcom/bumptech/glide/util/GlideSuppliers;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static memorize(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "TT;>;)",
            "Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/GlideSuppliers$1;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
