.class public final Lkotlin/reflect/jvm/internal/c$d;
.super Lkotlin/reflect/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

.field public final b:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;)V
    .locals 1

    const-string v0, "getterSignature"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/c$d;->b:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    return-object p0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$d;->b:Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    return-object p0
.end method
