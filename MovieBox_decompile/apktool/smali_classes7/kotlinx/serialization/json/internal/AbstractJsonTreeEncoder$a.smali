.class public final Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;
.super Lsy/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Lsy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lty/c;

.field final synthetic b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lsy/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d()Lkotlinx/serialization/json/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lty/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->a:Lty/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/UInt;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlinx/serialization/json/internal/e;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Lkotlinx/serialization/json/o;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, p1, v3}, Lkotlinx/serialization/json/o;-><init>(Ljava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public a()Lty/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->a:Lty/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/UByte;->b(B)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/UByte;->f(B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public m(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lkotlin/ULong;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/d;->a(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public q(S)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/UShort;->b(S)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/UShort;->f(S)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
