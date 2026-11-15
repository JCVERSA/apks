.class public final Lc27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;


# static fields
.field public static final a:Lc27;

.field public static final b:Lid9;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc27;

    invoke-direct {v0}, Lc27;-><init>()V

    sput-object v0, Lc27;->a:Lc27;

    sget-object v0, Lkotlinx/serialization/descriptors/b$d;->a:Lkotlinx/serialization/descriptors/b$d;

    sput-object v0, Lc27;->b:Lid9;

    const-string v0, "kotlin.Nothing"

    sput-object v0, Lc27;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Descriptor for type `kotlin.Nothing` does not have elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->c(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc27;->a()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    invoke-virtual {p0}, Lc27;->a()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public e()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc27;->a()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lc27;->a()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    sget-object p0, Lc27;->b:Lid9;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    sget-object p0, Lc27;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lc27;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lc27;->getKind()Lid9;

    move-result-object p0

    invoke-virtual {p0}, Lid9;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public i(I)Z
    .locals 0

    invoke-virtual {p0}, Lc27;->a()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public isInline()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NothingSerialDescriptor"

    return-object p0
.end method
