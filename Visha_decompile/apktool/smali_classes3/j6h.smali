.class public final synthetic Lj6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lk6h;


# direct methods
.method public synthetic constructor <init>(Lk6h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6h;->b:Lk6h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj6h;->b:Lk6h;

    invoke-static {p0}, Lk6h;->a(Lk6h;)Ll6h;

    move-result-object p0

    return-object p0
.end method
