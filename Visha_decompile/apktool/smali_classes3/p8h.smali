.class public final synthetic Lp8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lq8h;


# direct methods
.method public synthetic constructor <init>(Lq8h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp8h;->b:Lq8h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp8h;->b:Lq8h;

    invoke-static {p0}, Lq8h;->a(Lq8h;)Lr8h;

    move-result-object p0

    return-object p0
.end method
