.class public Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/integration/VariableResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/integration/impl/ItemResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemResolver"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private type:Ljava/lang/Class;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->type:Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->type:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public setStaticType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->type:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
