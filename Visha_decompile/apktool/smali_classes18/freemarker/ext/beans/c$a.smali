.class public final Lfreemarker/ext/beans/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lfreemarker/ext/beans/c$a;

.field public static final d:Lfreemarker/ext/beans/c$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfreemarker/ext/beans/c$a;

    sget-object v1, Lfreemarker/ext/beans/c;->u:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lfreemarker/ext/beans/c;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/c;->u:Ljava/lang/Class;

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/c$a;->c:Lfreemarker/ext/beans/c$a;

    new-instance v0, Lfreemarker/ext/beans/c$a;

    sget-object v1, Lfreemarker/ext/beans/c;->v:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lfreemarker/ext/beans/c;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/c;->v:Ljava/lang/Class;

    :cond_1
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/c$a;->d:Lfreemarker/ext/beans/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/c$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/c$a;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/c$a;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a()Lfreemarker/ext/beans/c$a;
    .locals 1

    sget-object v0, Lfreemarker/ext/beans/c$a;->c:Lfreemarker/ext/beans/c$a;

    return-object v0
.end method

.method public static synthetic b()Lfreemarker/ext/beans/c$a;
    .locals 1

    sget-object v0, Lfreemarker/ext/beans/c$a;->d:Lfreemarker/ext/beans/c$a;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lfreemarker/ext/beans/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/ext/beans/c$a;

    iget-object v0, p1, Lfreemarker/ext/beans/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/beans/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/ext/beans/c$a;->b:[Ljava/lang/Class;

    iget-object p1, p1, Lfreemarker/ext/beans/c$a;->b:[Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfreemarker/ext/beans/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lfreemarker/ext/beans/c$a;->b:[Ljava/lang/Class;

    array-length p0, p0

    xor-int/2addr p0, v0

    return p0
.end method
