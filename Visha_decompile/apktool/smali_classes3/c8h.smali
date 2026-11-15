.class public final synthetic Lc8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ld8h;


# direct methods
.method public synthetic constructor <init>(Ld8h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8h;->b:Ld8h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc8h;->b:Ld8h;

    invoke-static {p0}, Ld8h;->a(Ld8h;)Le8h;

    move-result-object p0

    return-object p0
.end method
