.class public final synthetic Lro6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:[Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro6;->a:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lro6;->a:[Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->b([Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method
