.class public final synthetic Lm6e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Lolg;


# direct methods
.method public synthetic constructor <init>(Lolg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6e;->b:Lolg;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lm6e;->b:Lolg;

    invoke-interface {p0, p1}, Lolg;->f(Ljava/lang/Runnable;)Z

    return-void
.end method
