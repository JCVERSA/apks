.class public final Lob1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob1$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob1$c;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Ljq0;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    new-instance v0, Lob1$b;

    invoke-direct {v0, p1}, Lob1$b;-><init>(Ljq0;)V

    new-instance v1, Lob1$c$a;

    invoke-direct {v1, p0, v0}, Lob1$c$a;-><init>(Lob1$c;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Ljq0;->enqueue(Ltq0;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Ljq0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lob1$c;->a(Ljq0;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lob1$c;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method
