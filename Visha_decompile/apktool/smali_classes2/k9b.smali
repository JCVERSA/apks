.class public abstract Lk9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lge3;
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lk9b;->b()Lge3;

    move-result-object p0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public abstract d()Lj9b;
.end method
