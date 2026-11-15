.class public final synthetic Li68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lk78;

.field public final synthetic b:Lxk5;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lk78;Lxk5;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li68;->a:Lk78;

    iput-object p2, p0, Li68;->b:Lxk5;

    iput-object p3, p0, Li68;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Li68;->d:Z

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Li68;->a:Lk78;

    iget-object v1, p0, Li68;->b:Lxk5;

    iget-object v2, p0, Li68;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Li68;->d:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p0, p1}, Lk78;->g(Lk78;Lxk5;Ljava/util/ArrayList;ZLjava/util/List;)V

    return-void
.end method
