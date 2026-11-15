.class public final synthetic Lv9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/TriFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/TriFunction;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9b;->a:Lorg/apache/commons/lang3/function/TriFunction;

    iput-object p2, p0, Lv9b;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv9b;->a:Lorg/apache/commons/lang3/function/TriFunction;

    iget-object p0, p0, Lv9b;->b:Ljava/util/function/Function;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/function/TriFunction;->a(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
