.class public final synthetic Ljef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lqef;


# direct methods
.method public synthetic constructor <init>(Lqef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljef;->b:Lqef;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljef;->b:Lqef;

    invoke-static {p0}, Lqef;->p(Lqef;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
