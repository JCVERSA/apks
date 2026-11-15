.class public abstract Lu95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llz9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu95$a;
    }
.end annotation


# static fields
.field public static final d:Lu95$a;


# instance fields
.field public final a:Lda5;

.field public final b:Ltd9;

.field public final c:Lkotlinx/serialization/json/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu95$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu95$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu95;->d:Lu95$a;

    return-void
.end method

.method public constructor <init>(Lda5;Ltd9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lu95;->a:Lda5;

    .line 4
    iput-object p2, p0, Lu95;->b:Ltd9;

    .line 5
    new-instance p1, Lkotlinx/serialization/json/internal/a;

    invoke-direct {p1}, Lkotlinx/serialization/json/internal/a;-><init>()V

    iput-object p1, p0, Lu95;->c:Lkotlinx/serialization/json/internal/a;

    return-void
.end method

.method public synthetic constructor <init>(Lda5;Ltd9;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lu95;-><init>(Lda5;Ltd9;)V

    return-void
.end method


# virtual methods
.method public a()Ltd9;
    .locals 0

    iget-object p0, p0, Lu95;->b:Ltd9;

    return-object p0
.end method

.method public final b(Lnd9;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldc5;

    invoke-direct {v0}, Ldc5;-><init>()V

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lyb5;->b(Lu95;Lsc5;Lnd9;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldc5;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ldc5;->g()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ldc5;->g()V

    throw p0
.end method

.method public final c(Lk92;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Loz9;

    invoke-direct {v0, p2}, Loz9;-><init>(Ljava/lang/String;)V

    new-instance p2, Lxy9;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lk92;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lxy9;-><init>(Lu95;Lkotlinx/serialization/json/internal/WriteMode;Lc3;Lkotlinx/serialization/descriptors/a;Lxy9$a;)V

    invoke-virtual {p2, p1}, Lxy9;->B(Lk92;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lc3;->w()V

    return-object p0
.end method

.method public final d()Lda5;
    .locals 0

    iget-object p0, p0, Lu95;->a:Lda5;

    return-object p0
.end method

.method public final e()Lkotlinx/serialization/json/internal/a;
    .locals 0

    iget-object p0, p0, Lu95;->c:Lkotlinx/serialization/json/internal/a;

    return-object p0
.end method
