.class public final synthetic Lq5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lt5h;


# direct methods
.method public synthetic constructor <init>(Lt5h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5h;->b:Lt5h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lq5h;->b:Lt5h;

    invoke-static {p0}, Lt5h;->a(Lt5h;)Lu5h;

    move-result-object p0

    return-object p0
.end method
