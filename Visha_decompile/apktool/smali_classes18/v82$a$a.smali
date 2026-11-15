.class public Lv82$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv82$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv82$a;


# direct methods
.method public constructor <init>(Lv82$a;)V
    .locals 0

    iput-object p1, p0, Lv82$a$a;->b:Lv82$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 2

    const-string p0, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1"

    const-string v0, "invoke"

    const-string v1, "descriptor"

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lzfb;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lv82$a$a;->a(I)V

    :cond_0
    iget-object p0, p0, Lv82$a$a;->b:Lv82$a;

    iget-object p0, p0, Lv82$a;->a:Led3;

    invoke-interface {p0, p1}, Led3;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-virtual {p0, p1}, Lv82$a$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lzfb;

    move-result-object p0

    return-object p0
.end method
