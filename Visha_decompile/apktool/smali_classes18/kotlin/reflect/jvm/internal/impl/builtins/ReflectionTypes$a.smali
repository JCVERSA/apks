.class public final Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Laf5;)Lqw0;
    .locals 1

    const-string v0, "types"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lbe5;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkr0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$a;->a:I

    invoke-static {p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->a(Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Ljava/lang/String;I)Lqw0;

    move-result-object p0

    return-object p0
.end method
