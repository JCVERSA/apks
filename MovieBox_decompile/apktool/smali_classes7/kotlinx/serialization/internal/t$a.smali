.class public final Lkotlinx/serialization/internal/t$a;
.super Ljava/lang/ClassValue;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/t;->c()Lkotlinx/serialization/internal/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/internal/t;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/internal/t$a;->a:Lkotlinx/serialization/internal/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlinx/serialization/internal/m;

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/serialization/internal/t$a;->a:Lkotlinx/serialization/internal/t;

    .line 9
    .line 10
    invoke-static {v1}, Lkotlinx/serialization/internal/t;->b(Lkotlinx/serialization/internal/t;)Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lkotlinx/serialization/b;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/m;-><init>(Lkotlinx/serialization/b;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/t$a;->a(Ljava/lang/Class;)Lkotlinx/serialization/internal/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
