.class public Lkx9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkx9;

.field public static c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Liv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkx9;

    invoke-direct {v0}, Lkx9;-><init>()V

    sput-object v0, Lkx9;->b:Lkx9;

    const-string v0, "1.6.99"

    sput-object v0, Lkx9;->c:Ljava/lang/String;

    const-class v0, Lorg/slf4j/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkx9;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/slf4j/impl/a;

    invoke-direct {v0}, Lorg/slf4j/impl/a;-><init>()V

    iput-object v0, p0, Lkx9;->a:Liv4;

    return-void
.end method

.method public static c()Lkx9;
    .locals 1

    sget-object v0, Lkx9;->b:Lkx9;

    return-object v0
.end method


# virtual methods
.method public a()Liv4;
    .locals 0

    iget-object p0, p0, Lkx9;->a:Liv4;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkx9;->d:Ljava/lang/String;

    return-object p0
.end method
