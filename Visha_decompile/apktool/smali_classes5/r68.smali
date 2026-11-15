.class public final synthetic Lr68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lk78;


# direct methods
.method public synthetic constructor <init>(Lk78;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr68;->a:Lk78;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr68;->a:Lk78;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lk78;->q(Lk78;Ljava/util/List;)V

    return-void
.end method
