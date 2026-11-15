.class public abstract Le3;
.super Liy6;
.source "SourceFile"

# interfaces
.implements Lia5;


# instance fields
.field public final c:Lu95;

.field public final d:Lkotlinx/serialization/json/b;

.field public final e:Lda5;


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Liy6;-><init>()V

    .line 3
    iput-object p1, p0, Le3;->c:Lu95;

    .line 4
    iput-object p2, p0, Le3;->d:Lkotlinx/serialization/json/b;

    .line 5
    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p1

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object p1

    iput-object p1, p0, Le3;->e:Lda5;

    return-void
.end method

.method public synthetic constructor <init>(Lu95;Lkotlinx/serialization/json/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le3;-><init>(Lu95;Lkotlinx/serialization/json/b;)V

    return-void
.end method


# virtual methods
.method public B(Lk92;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lnc8;->d(Lia5;Lk92;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public E()Z
    .locals 0

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/serialization/json/JsonNull;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic J(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->g0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic K(Ljava/lang/Object;)B
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->h0(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method public bridge synthetic L(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->i0(Ljava/lang/String;)C

    move-result p0

    return p0
.end method

.method public bridge synthetic M(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->j0(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Le3;->k0(Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic O(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->l0(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Le3;->m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->n0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic R(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->o0(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic S(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->p0(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic T(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le3;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "parentName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "childName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public a()Ltd9;
    .locals 0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p0

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object p0

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/a;)Lfd1;
    .locals 11

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/b$b;->a:Lkotlinx/serialization/descriptors/b$b;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lmc8;

    :goto_0
    const-class v3, Lkotlinx/serialization/json/a;

    const-string v4, ", but had "

    const-string v5, " as the serialized body of "

    const-string v6, "Expected "

    const/4 v7, -0x1

    if-eqz v2, :cond_2

    new-instance v1, Lhc5;

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p0

    instance-of v2, v0, Lkotlinx/serialization/json/a;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlinx/serialization/json/a;

    invoke-direct {v1, p0, v0}, Lhc5;-><init>(Lu95;Lkotlinx/serialization/json/a;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Loa5;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/b$c;->a:Lkotlinx/serialization/descriptors/b$c;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object v8

    invoke-virtual {v1}, Lu95;->a()Ltd9;

    move-result-object v9

    invoke-static {v8, v9}, Lppc;->a(Lkotlinx/serialization/descriptors/a;Ltd9;)Lkotlinx/serialization/descriptors/a;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v9

    instance-of v10, v9, Lef8;

    if-nez v10, :cond_6

    sget-object v10, Lid9$b;->a:Lid9$b;

    invoke-static {v9, v10}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lhc5;

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p0

    instance-of v2, v0, Lkotlinx/serialization/json/a;

    if-eqz v2, :cond_4

    check-cast v0, Lkotlinx/serialization/json/a;

    invoke-direct {v1, p0, v0}, Lhc5;-><init>(Lu95;Lkotlinx/serialization/json/a;)V

    goto/16 :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Loa5;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v8}, Loa5;->c(Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    new-instance v1, Lic5;

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p0

    instance-of v3, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_7

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, p0, v0}, Lic5;-><init>(Lu95;Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Loa5;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_8
    new-instance v8, Lkotlinx/serialization/json/internal/b;

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    instance-of p0, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz p0, :cond_9

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lkotlinx/serialization/json/internal/b;-><init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v8

    :goto_2
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Loa5;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lu95;
    .locals 0

    iget-object p0, p0, Le3;->c:Lu95;

    return-object p0
.end method

.method public final d0(Lkotlinx/serialization/json/c;Ljava/lang/String;)Lwa5;
    .locals 0

    instance-of p0, p1, Lwa5;

    if-eqz p0, :cond_0

    check-cast p1, Lwa5;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected \'null\' when "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Loa5;->d(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public abstract e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;
.end method

.method public final f0()Lkotlinx/serialization/json/b;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->U()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le3;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Le3;->s0()Lkotlinx/serialization/json/b;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public g0(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object v0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->m()Z

    move-result v1

    const-string v2, "boolean"

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, Le3;->d0(Lkotlinx/serialization/json/c;Ljava/lang/String;)Lwa5;

    move-result-object v1

    invoke-virtual {v1}, Lwa5;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boolean literal for key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lla5;->e(Lkotlinx/serialization/json/c;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v2}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public h0(Ljava/lang/String;)B
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    const-string v0, "byte"

    :try_start_0
    invoke-static {p1}, Lla5;->j(Lkotlinx/serialization/json/c;)I

    move-result p1

    const/16 v1, -0x80

    if-gt v1, p1, :cond_0

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public i0(Ljava/lang/String;)C
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ll1a;->t1(Ljava/lang/CharSequence;)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p1, "char"

    invoke-virtual {p0, p1}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public j0(Ljava/lang/String;)D
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lla5;->g(Lkotlinx/serialization/json/c;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v2

    invoke-virtual {v2}, Lu95;->d()Lda5;

    move-result-object v2

    invoke-virtual {v2}, Lda5;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Loa5;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    const-string p1, "double"

    invoke-virtual {p0, p1}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public k0(Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)I
    .locals 7

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v2

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/c;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->j(Lkotlinx/serialization/descriptors/a;Lu95;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public l0(Ljava/lang/String;)F
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lla5;->i(Lkotlinx/serialization/json/c;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Loa5;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    const-string p1, "float"

    invoke-virtual {p0, p1}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lzy9;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lja5;

    new-instance v0, Loz9;

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Loz9;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lja5;-><init>(Lc3;Lu95;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public n0(Ljava/lang/String;)I
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lla5;->j(Lkotlinx/serialization/json/c;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p1, "int"

    invoke-virtual {p0, p1}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public o0(Ljava/lang/String;)J
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lla5;->m(Lkotlinx/serialization/json/c;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-string p1, "long"

    invoke-virtual {p0, p1}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public p0(Ljava/lang/String;)S
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    const-string v0, "short"

    :try_start_0
    invoke-static {p1}, Lla5;->j(Lkotlinx/serialization/json/c;)I

    move-result p1

    const/16 v1, -0x8000

    if-gt v1, p1, :cond_0

    const/16 v1, 0x7fff

    if-gt p1, v1, :cond_0

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Le3;->t0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object v0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->m()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, "string"

    invoke-virtual {p0, v0, v1}, Le3;->d0(Lkotlinx/serialization/json/c;Ljava/lang/String;)Lwa5;

    move-result-object v1

    invoke-virtual {v1}, Lwa5;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String literal for key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    instance-of p1, v0, Lkotlinx/serialization/json/JsonNull;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lkotlinx/serialization/json/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected \'null\' value instead of string literal"

    invoke-static {v2, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final r0(Ljava/lang/String;)Lkotlinx/serialization/json/c;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le3;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JsonPrimitive at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public s()Lkotlinx/serialization/json/b;
    .locals 0

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public abstract s0()Lkotlinx/serialization/json/b;
.end method

.method public final t0(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Le3;->f0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public w(Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->U()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lqb5;

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-virtual {p0}, Le3;->s0()Lkotlinx/serialization/json/b;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lqb5;-><init>(Lu95;Lkotlinx/serialization/json/b;)V

    invoke-virtual {v0, p1}, Le3;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    :goto_0
    return-object p0
.end method
