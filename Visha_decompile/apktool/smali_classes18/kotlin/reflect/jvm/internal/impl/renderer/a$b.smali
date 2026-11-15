.class public final Lkotlin/reflect/jvm/internal/impl/renderer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/renderer/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/renderer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/renderer/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/a$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$b;->a:Lkotlin/reflect/jvm/internal/impl/renderer/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpx0;Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;)Ljava/lang/String;
    .locals 0

    const-string p0, "classifier"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderer"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lhcb;

    if-eqz p0, :cond_0

    check-cast p1, Lhcb;

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->x(Lby6;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lxt1;->b()Lxt1;

    move-result-object p1

    instance-of p2, p1, Lqw0;

    if-nez p2, :cond_1

    invoke-static {p0}, Le81;->R(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lns8;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
