.class public final synthetic Ls7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lt7h;


# direct methods
.method public synthetic constructor <init>(Lt7h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7h;->b:Lt7h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls7h;->b:Lt7h;

    invoke-static {p0}, Lt7h;->a(Lt7h;)Lu7h;

    move-result-object p0

    return-object p0
.end method
