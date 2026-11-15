.class public final synthetic Lndh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lodh;


# direct methods
.method public synthetic constructor <init>(Lodh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lndh;->b:Lodh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lndh;->b:Lodh;

    invoke-static {p0}, Lodh;->a(Lodh;)Lpdh;

    move-result-object p0

    return-object p0
.end method
