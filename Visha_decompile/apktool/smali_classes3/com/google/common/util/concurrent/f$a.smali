.class public final Lcom/google/common/util/concurrent/f$a;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/google/common/util/concurrent/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/f$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f$a;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/f$a;->b:Lcom/google/common/util/concurrent/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$h;->cancel(Z)Z

    return-void
.end method
