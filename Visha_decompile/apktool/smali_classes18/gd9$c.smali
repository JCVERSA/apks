.class public final Lgd9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd9;->a(Lkotlinx/serialization/descriptors/a;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    iput-object p1, p0, Lgd9$c;->b:Lkotlinx/serialization/descriptors/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lgd9$a;

    iget-object p0, p0, Lgd9$c;->b:Lkotlinx/serialization/descriptors/a;

    invoke-direct {v0, p0}, Lgd9$a;-><init>(Lkotlinx/serialization/descriptors/a;)V

    return-object v0
.end method
