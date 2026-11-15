.class public final synthetic Lx6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ly6h;


# direct methods
.method public synthetic constructor <init>(Ly6h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6h;->b:Ly6h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx6h;->b:Ly6h;

    invoke-static {p0}, Ly6h;->a(Ly6h;)Lz6h;

    move-result-object p0

    return-object p0
.end method
