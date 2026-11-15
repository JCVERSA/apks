.class public final synthetic Lrrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lsrg;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lsrg;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrrg;->a:Lsrg;

    iput-object p2, p0, Lrrg;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lrrg;->a:Lsrg;

    iget-object p0, p0, Lrrg;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p0, p1}, Lsrg;->a(Lsrg;Ljava/util/List;Ljava/lang/Exception;)Lim5;

    move-result-object p0

    return-object p0
.end method
