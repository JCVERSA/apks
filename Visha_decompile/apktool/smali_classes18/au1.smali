.class public abstract Lau1;
.super Lyt1;
.source "SourceFile"

# interfaces
.implements Lzt1;


# instance fields
.field public final d:Lxt1;

.field public final e:Lyt9;


# direct methods
.method public constructor <init>(Lxt1;Lmd;Lby6;Lyt9;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_3
    invoke-direct {p0, p2, p3}, Lyt1;-><init>(Lmd;Lby6;)V

    iput-object p1, p0, Lau1;->d:Lxt1;

    iput-object p4, p0, Lau1;->e:Lyt9;

    return-void
.end method

.method private static synthetic Q(I)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getSource"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getContainingDeclaration"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_4
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a()Lxt1;
    .locals 0

    invoke-virtual {p0}, Lau1;->l0()Ldu1;

    move-result-object p0

    return-object p0
.end method

.method public b()Lxt1;
    .locals 1

    iget-object p0, p0, Lau1;->d:Lxt1;

    if-nez p0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 1

    iget-object p0, p0, Lau1;->e:Lyt9;

    if-nez p0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public l0()Ldu1;
    .locals 1

    invoke-super {p0}, Lyt1;->a()Lxt1;

    move-result-object p0

    check-cast p0, Ldu1;

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lau1;->Q(I)V

    :cond_0
    return-object p0
.end method
