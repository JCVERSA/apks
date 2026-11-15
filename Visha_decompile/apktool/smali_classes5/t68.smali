.class public final synthetic Lt68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lk78;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lk78;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt68;->a:Lk78;

    iput-object p2, p0, Lt68;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lt68;->c:Z

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lt68;->a:Lk78;

    iget-object v1, p0, Lt68;->b:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lt68;->c:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lk78;->A(Lk78;Ljava/util/ArrayList;ZLjava/util/List;)V

    return-void
.end method
