.class public Lr82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;


# instance fields
.field public final a:Z

.field public final b:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;


# direct methods
.method public constructor <init>(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr82;->a:Z

    iput-object p2, p0, Lr82;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    iput-object p3, p0, Lr82;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    return-void
.end method


# virtual methods
.method public a(Lsbb;Lsbb;)Z
    .locals 2

    iget-boolean v0, p0, Lr82;->a:Z

    iget-object v1, p0, Lr82;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    iget-object p0, p0, Lr82;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v0, v1, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides;->a(ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lsbb;Lsbb;)Z

    move-result p0

    return p0
.end method
