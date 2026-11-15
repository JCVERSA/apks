.class public final synthetic Lfgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lggh;


# direct methods
.method public synthetic constructor <init>(Lggh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfgh;->b:Lggh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lfgh;->b:Lggh;

    new-instance v0, Lhgh;

    iget-object p0, p0, Lggh;->b:Ljava/util/List;

    invoke-direct {v0, p0}, Lhgh;-><init>(Ljava/util/List;)V

    return-object v0
.end method
