.class public final Lsd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsd5$a;
    }
.end annotation


# static fields
.field public static final a:Lsd5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsd5;

    invoke-direct {v0}, Lsd5;-><init>()V

    sput-object v0, Lsd5;->a:Lsd5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lsd5;->h(Ljava/lang/String;)Lqd5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lsd5;->k()Lqd5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqd5;

    invoke-virtual {p0, p1}, Lsd5;->g(Lqd5;)Lqd5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lsd5;->j(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lqd5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lqd5;

    invoke-virtual {p0, p1}, Lsd5;->l(Lqd5;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lsd5;->i(Ljava/lang/String;)Lqd5$c;

    move-result-object p0

    return-object p0
.end method

.method public g(Lqd5;)Lqd5;
    .locals 2

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lqd5$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lqd5$d;

    invoke-virtual {v0}, Lqd5$d;->i()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lqd5$d;->i()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lo54;

    move-result-object p1

    invoke-static {p1}, Lfd5;->c(Lo54;)Lfd5;

    move-result-object p1

    invoke-virtual {p1}, Lfd5;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byFqNameWithoutInnerClas\u2026apperFqName).internalName"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lsd5;->i(Ljava/lang/String;)Lqd5$c;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public h(Ljava/lang/String;)Lqd5;
    .locals 8

    const-string v0, "representation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    new-instance p0, Lqd5$d;

    invoke-direct {p0, v6}, Lqd5$d;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    return-object p0

    :cond_2
    const/16 v2, 0x56

    if-ne v1, v2, :cond_3

    new-instance p0, Lqd5$d;

    invoke-direct {p0, v5}, Lqd5$d;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    new-instance v0, Lqd5$a;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lsd5;->h(Ljava/lang/String;)Lqd5;

    move-result-object p0

    invoke-direct {v0, p0}, Lqd5$a;-><init>(Lqd5;)V

    move-object p0, v0

    goto :goto_2

    :cond_4
    const/16 p0, 0x4c

    if-ne v1, p0, :cond_5

    const/16 p0, 0x3b

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v5}, Lj1a;->c0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p0

    :cond_5
    new-instance p0, Lqd5$c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqd5$c;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lqd5$c;
    .locals 0

    const-string p0, "internalName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lqd5$c;

    invoke-direct {p0, p1}, Lqd5$c;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public j(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lqd5;
    .locals 0

    const-string p0, "primitiveType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsd5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->d()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->g()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->e()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->f()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->h()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->b()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->c()Lqd5$d;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget-object p0, Lqd5;->a:Lqd5$b;

    invoke-virtual {p0}, Lqd5$b;->a()Lqd5$d;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()Lqd5;
    .locals 1

    const-string v0, "java/lang/Class"

    invoke-virtual {p0, v0}, Lsd5;->i(Ljava/lang/String;)Lqd5$c;

    move-result-object p0

    return-object p0
.end method

.method public l(Lqd5;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lqd5$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Lqd5$a;

    invoke-virtual {p1}, Lqd5$a;->i()Lqd5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsd5;->l(Lqd5;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lqd5$d;

    if-eqz p0, :cond_2

    check-cast p1, Lqd5$d;

    invoke-virtual {p1}, Lqd5$d;->i()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_1
    const-string p0, "V"

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lqd5$c;

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Lqd5$c;

    invoke-virtual {p1}, Lqd5$c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
