.class public Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$NameAndTypeMemberComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lxt1;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;

.field private static final RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$a;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$a;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$a;-><init>()V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$a;->b(Le74;)Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lxt1;

    check-cast p2, Lxt1;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->compare(Lxt1;Lxt1;)I

    move-result p0

    return p0
.end method

.method public compare(Lxt1;Lxt1;)I
    .locals 11

    .line 2
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator$NameAndTypeMemberComparator;->access$000(Lxt1;Lxt1;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    instance-of p0, p1, Lebb;

    if-eqz p0, :cond_1

    instance-of p0, p2, Lebb;

    if-eqz p0, :cond_1

    .line 5
    move-object p0, p1

    check-cast p0, Lebb;

    .line 6
    move-object v0, p2

    check-cast v0, Lebb;

    .line 7
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {p0}, Lebb;->w0()Lsm9;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-interface {v0}, Lebb;->w0()Lsm9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e

    return p0

    .line 10
    :cond_1
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz p0, :cond_b

    instance-of p0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz p0, :cond_b

    .line 11
    move-object p0, p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 12
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 13
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v1

    .line 14
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 15
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {v1}, Lknb;->getType()Leh5;

    move-result-object v1

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {v2}, Lknb;->getType()Leh5;

    move-result-object v2

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    .line 18
    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 21
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v6}, Lknb;->getType()Leh5;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v7}, Lknb;->getType()Leh5;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    return v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_5

    return v1

    .line 25
    :cond_5
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    move v4, v3

    .line 27
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 28
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhcb;

    invoke-interface {v5}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v5

    .line 29
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhcb;

    invoke-interface {v6}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object v6

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-eqz v7, :cond_6

    return v7

    :cond_6
    move v7, v3

    .line 31
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 32
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leh5;

    invoke-virtual {v8, v9}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh5;

    invoke-virtual {v8, v10}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->y(Leh5;)Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    return v8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 35
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_a

    return v1

    .line 36
    :cond_a
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz v1, :cond_e

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz v1, :cond_e

    .line 37
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object p0

    .line 38
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_e

    return p0

    .line 40
    :cond_b
    instance-of p0, p1, Lqw0;

    if-eqz p0, :cond_10

    instance-of p0, p2, Lqw0;

    if-eqz p0, :cond_10

    .line 41
    move-object p0, p1

    check-cast p0, Lqw0;

    .line 42
    move-object v0, p2

    check-cast v0, Lqw0;

    .line 43
    invoke-interface {p0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 44
    invoke-interface {p0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0}, Lqw0;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 45
    :cond_c
    invoke-interface {p0}, Lqw0;->h0()Z

    move-result v1

    invoke-interface {v0}, Lqw0;->h0()Z

    move-result v0

    if-eq v1, v0, :cond_e

    .line 46
    invoke-interface {p0}, Lqw0;->h0()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_3

    :cond_d
    const/4 p0, -0x1

    :goto_3
    return p0

    .line 47
    :cond_e
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/MemberComparator;->RENDERER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->s(Lxt1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->s(Lxt1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_f

    return p0

    .line 48
    :cond_f
    invoke-static {p1}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object p0

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    .line 49
    invoke-static {p2}, Ly82;->g(Lxt1;)Lqq6;

    move-result-object p1

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lby6;->d(Lby6;)I

    move-result p0

    return p0

    .line 51
    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1, v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 53
    const-string p2, "Unsupported pair of descriptors:\n\'%s\' Class: %s\n%s\' Class: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
