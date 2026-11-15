.class public final Lcq8;
.super Lqp8;
.source "SourceFile"

# interfaces
.implements Ll75;


# instance fields
.field public final c:Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Lby6;Ljava/lang/Enum;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqp8;-><init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcq8;->c:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public d()Lxw0;
    .locals 1

    iget-object p0, p0, Lcq8;->c:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-string v0, "enumClass"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->a(Ljava/lang/Class;)Lxw0;

    move-result-object p0

    return-object p0
.end method

.method public getEntryName()Lby6;
    .locals 0

    iget-object p0, p0, Lcq8;->c:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    return-object p0
.end method
