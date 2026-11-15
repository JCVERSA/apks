.class public final synthetic Lgbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lhbh;


# direct methods
.method public synthetic constructor <init>(Lhbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbh;->b:Lhbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgbh;->b:Lhbh;

    invoke-static {p0}, Lhbh;->a(Lhbh;)Libh;

    move-result-object p0

    return-object p0
.end method
