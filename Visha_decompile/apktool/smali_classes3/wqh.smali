.class public final synthetic Lwqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lqqh;


# direct methods
.method public synthetic constructor <init>(Lqqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwqh;->b:Lqqh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwqh;->b:Lqqh;

    invoke-interface {p0}, Lqqh;->zza()V

    const/4 p0, 0x0

    return-object p0
.end method
