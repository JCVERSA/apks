.class public abstract Lcom/google/common/hash/LongAddables;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field public static final a:Lw6a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/common/hash/LongAdder;

    invoke-direct {v0}, Lcom/google/common/hash/LongAdder;-><init>()V

    new-instance v0, Lcom/google/common/hash/LongAddables$a;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Lcom/google/common/hash/LongAddables$b;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$b;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/common/hash/LongAddables;->a:Lw6a;

    return-void
.end method

.method public static a()Lxq5;
    .locals 1

    sget-object v0, Lcom/google/common/hash/LongAddables;->a:Lw6a;

    invoke-interface {v0}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq5;

    return-object v0
.end method
