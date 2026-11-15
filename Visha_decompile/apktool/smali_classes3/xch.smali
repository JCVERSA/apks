.class public final synthetic Lxch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lych;


# direct methods
.method public synthetic constructor <init>(Lych;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxch;->b:Lych;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxch;->b:Lych;

    invoke-static {p0}, Lych;->a(Lych;)Lzch;

    move-result-object p0

    return-object p0
.end method
