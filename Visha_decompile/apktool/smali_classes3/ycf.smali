.class public final Lycf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lim5;


# direct methods
.method public constructor <init>(Lzcf;Lim5;)V
    .locals 0

    iput-object p2, p0, Lycf;->a:Lim5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lzcf;->d()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lycf;->a:Lim5;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {}, Lzcf;->d()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lycf;->a:Lim5;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
