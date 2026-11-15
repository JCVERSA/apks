.class public final Lmc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmc2;

.field public static final b:Lkotlinx/coroutines/c;

.field public static final c:Lkotlinx/coroutines/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc2;

    invoke-direct {v0}, Lmc2;-><init>()V

    sput-object v0, Lmc2;->a:Lmc2;

    sget-object v0, Ld42;->h:Ld42;

    sput-object v0, Lmc2;->b:Lkotlinx/coroutines/c;

    sget-object v0, Lkotlinx/coroutines/k;->b:Lkotlinx/coroutines/k;

    sput-object v0, Lmc2;->c:Lkotlinx/coroutines/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/c;
    .locals 1

    sget-object v0, Lmc2;->b:Lkotlinx/coroutines/c;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/c;
    .locals 1

    sget-object v0, Lx12;->c:Lx12;

    return-object v0
.end method

.method public static final c()Lrx5;
    .locals 1

    sget-object v0, Ltx5;->b:Lrx5;

    return-object v0
.end method
