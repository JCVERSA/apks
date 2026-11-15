.class public final synthetic Leif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lfif;


# direct methods
.method public synthetic constructor <init>(Lfif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leif;->b:Lfif;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leif;->b:Lfif;

    invoke-static {p0}, Lfif;->p(Lfif;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
