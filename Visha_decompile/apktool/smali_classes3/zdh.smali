.class public final synthetic Lzdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lbeh;


# direct methods
.method public synthetic constructor <init>(Lbeh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzdh;->b:Lbeh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzdh;->b:Lbeh;

    invoke-static {p0}, Lbeh;->a(Lbeh;)Laeh;

    move-result-object p0

    return-object p0
.end method
