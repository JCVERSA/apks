.class public final Lkotlin/reflect/jvm/internal/c$b;
.super Lkotlin/reflect/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "getterMethod"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/c$b;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/c$b;->b:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$b;->a:Ljava/lang/reflect/Method;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapperKt;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$b;->a:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public final c()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/c$b;->b:Ljava/lang/reflect/Method;

    return-object p0
.end method
