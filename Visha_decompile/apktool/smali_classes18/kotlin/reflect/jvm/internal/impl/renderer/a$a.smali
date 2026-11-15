.class public final Lkotlin/reflect/jvm/internal/impl/renderer/a$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/renderer/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$a;->a:Lkotlin/reflect/jvm/internal/impl/renderer/a$a;

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
    invoke-static {p1}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p0

    const-string p1, "getFqName(classifier)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->w(Lp54;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
