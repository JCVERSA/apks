.class public final Lkotlin/reflect/jvm/internal/calls/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/calls/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lu15;

.field public final b:[Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lu15;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unbox"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->a:Lu15;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->b:[Ljava/lang/reflect/Method;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a()Lu15;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->a:Lu15;

    return-object p0
.end method

.method public final b()[Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->b:[Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public final c()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c$a;->c:Ljava/lang/reflect/Method;

    return-object p0
.end method
