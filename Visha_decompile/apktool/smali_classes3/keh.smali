.class public final synthetic Lkeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lleh;


# direct methods
.method public synthetic constructor <init>(Lleh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkeh;->b:Lleh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkeh;->b:Lleh;

    invoke-static {p0}, Lleh;->a(Lleh;)Lmeh;

    move-result-object p0

    return-object p0
.end method
