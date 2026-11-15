.class public final synthetic Lrah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Luah;


# direct methods
.method public synthetic constructor <init>(Luah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrah;->b:Luah;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrah;->b:Luah;

    invoke-static {p0}, Luah;->a(Luah;)Lsah;

    move-result-object p0

    return-object p0
.end method
