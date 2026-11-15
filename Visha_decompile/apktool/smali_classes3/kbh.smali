.class public final synthetic Lkbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Llbh;


# direct methods
.method public synthetic constructor <init>(Llbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkbh;->b:Llbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkbh;->b:Llbh;

    invoke-static {p0}, Llbh;->a(Llbh;)Lmbh;

    move-result-object p0

    return-object p0
.end method
