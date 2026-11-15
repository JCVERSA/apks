.class public final Llq8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llq8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llq8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Llq8;
    .locals 2

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljq8;

    invoke-direct {p0, v0}, Ljq8;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_3

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz p0, :cond_2

    new-instance p0, Loq8;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Loq8;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lzp8;

    invoke-direct {p0, p1}, Lzp8;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p0, Lvp8;

    invoke-direct {p0, p1}, Lvp8;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    return-object p0
.end method
