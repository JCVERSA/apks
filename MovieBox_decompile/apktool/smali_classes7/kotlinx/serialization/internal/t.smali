.class final Lkotlinx/serialization/internal/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/internal/x1;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:Lkotlinx/serialization/internal/t$a;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "compute"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlinx/serialization/internal/t;->a:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Lkotlinx/serialization/internal/t;->c()Lkotlinx/serialization/internal/t$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lkotlinx/serialization/internal/t;->b:Lkotlinx/serialization/internal/t$a;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic b(Lkotlinx/serialization/internal/t;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/internal/t;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final c()Lkotlinx/serialization/internal/t$a;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/t$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/t$a;-><init>(Lkotlinx/serialization/internal/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/internal/t;->b:Lkotlinx/serialization/internal/t$a;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {v0, p1}, Lkotlinx/serialization/internal/s;->a(Lkotlinx/serialization/internal/t$a;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lkotlinx/serialization/internal/m;

    .line 17
    .line 18
    iget-object p1, p1, Lkotlinx/serialization/internal/m;->a:Lkotlinx/serialization/b;

    .line 19
    .line 20
    return-object p1
.end method
