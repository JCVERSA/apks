.class public Li02$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li02;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Li02;


# direct methods
.method public constructor <init>(Li02;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Li02$a;->c:Li02;

    iput-object p2, p0, Li02$a;->a:Ljava/lang/reflect/Type;

    iput-object p3, p0, Li02$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljq0;)Ljq0;
    .locals 1

    iget-object p0, p0, Li02$a;->b:Ljava/util/concurrent/Executor;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Li02$b;

    invoke-direct {v0, p0, p1}, Li02$b;-><init>(Ljava/util/concurrent/Executor;Ljq0;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic adapt(Ljq0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Li02$a;->a(Ljq0;)Ljq0;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Li02$a;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method
