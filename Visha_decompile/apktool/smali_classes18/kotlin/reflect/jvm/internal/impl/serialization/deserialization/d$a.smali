.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

.field public final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;

.field public final f:Lxw0;

.field public final g:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public final h:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lcy6;Lxcb;Lyt9;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;-><init>(Lcy6;Lxcb;Lyt9;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->d:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFqName()I

    move-result p3

    invoke-static {p2, p3}, Ley6;->a(Lcy6;I)Lxw0;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->f:Lxw0;

    sget-object p2, Lay3;->f:Lay3$d;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result p3

    invoke-virtual {p2, p3}, Lay3$d;->d(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-nez p2, :cond_0

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    :cond_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->g:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    sget-object p2, Lay3;->g:Lay3$b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFlags()I

    move-result p1

    invoke-virtual {p2, p1}, Lay3$b;->f(I)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IS_INNER.get(classProto.flags)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lo54;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->f:Lxw0;

    invoke-virtual {p0}, Lxw0;->b()Lo54;

    move-result-object p0

    const-string v0, "classId.asSingleFqName()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Lxw0;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->f:Lxw0;

    return-object p0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->d:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object p0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->g:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    return-object p0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->h:Z

    return p0
.end method
