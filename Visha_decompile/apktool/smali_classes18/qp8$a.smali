.class public final Lqp8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp8;
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
    invoke-direct {p0}, Lqp8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lby6;)Lqp8;
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->h(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcq8;

    check-cast p1, Ljava/lang/Enum;

    invoke-direct {p0, p2, p1}, Lcq8;-><init>(Lby6;Ljava/lang/Enum;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/annotation/Annotation;

    if-eqz p0, :cond_1

    new-instance p0, Lrp8;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-direct {p0, p2, p1}, Lrp8;-><init>(Lby6;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    new-instance p0, Lup8;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lup8;-><init>(Lby6;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_3

    new-instance p0, Lyp8;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p2, p1}, Lyp8;-><init>(Lby6;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    new-instance p0, Leq8;

    invoke-direct {p0, p2, p1}, Leq8;-><init>(Lby6;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
