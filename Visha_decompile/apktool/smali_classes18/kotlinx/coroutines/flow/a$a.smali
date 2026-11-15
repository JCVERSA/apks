.class public final Lkotlinx/coroutines/flow/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lkotlinx/coroutines/flow/a$a;

.field public static final b:Lkotlinx/coroutines/flow/a;

.field public static final c:Lkotlinx/coroutines/flow/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/a$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/a$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/a$a;->a:Lkotlinx/coroutines/flow/a$a;

    new-instance v0, Low9;

    invoke-direct {v0}, Low9;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/a$a;->b:Lkotlinx/coroutines/flow/a;

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/a$a;->c:Lkotlinx/coroutines/flow/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/a;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/flow/a$a;->b:Lkotlinx/coroutines/flow/a;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/a;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/flow/a$a;->c:Lkotlinx/coroutines/flow/a;

    return-object p0
.end method
