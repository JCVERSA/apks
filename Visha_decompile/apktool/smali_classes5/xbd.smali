.class public final synthetic Lxbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/athena/data/anateh/enatha;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxbd;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lxbd;->a:Ljava/util/List;

    check-cast p1, Landroid/util/LongSparseArray;

    invoke-static {p0, p1}, Lcom/transsion/athena/enatha/enatha;->k(Ljava/util/List;Landroid/util/LongSparseArray;)V

    return-void
.end method
