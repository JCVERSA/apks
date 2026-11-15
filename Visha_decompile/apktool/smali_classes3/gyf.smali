.class public final Lgyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Le0g;


# instance fields
.field public final b:Lhmh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhmh;Lpaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgyf;->b:Lhmh;

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final k(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzt()V
    .locals 2

    iget-object p0, p0, Lgyf;->b:Lhmh;

    iget-object p0, p0, Lhmh;->d0:Lqaf;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lqaf;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lqaf;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
