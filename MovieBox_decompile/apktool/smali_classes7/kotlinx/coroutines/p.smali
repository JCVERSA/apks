.class public abstract Lkotlinx/coroutines/p;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/z;

    .line 2
    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/p;->a:Lkotlinx/coroutines/internal/z;

    .line 9
    .line 10
    return-void
.end method
