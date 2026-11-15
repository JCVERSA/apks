.class public final Lhc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# instance fields
.field public final b:Lbc9;


# direct methods
.method public constructor <init>(Lbc9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc9;->b:Lbc9;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhc9;->b:Lbc9;

    invoke-interface {p0, p1, p2}, Lbc9;->l(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
