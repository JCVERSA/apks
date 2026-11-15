.class public final synthetic Lho1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lio1;

.field public final synthetic c:Ljo1;


# direct methods
.method public synthetic constructor <init>(Lio1;Ljo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lho1;->b:Lio1;

    iput-object p2, p0, Lho1;->c:Ljo1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lho1;->b:Lio1;

    iget-object p0, p0, Lho1;->c:Ljo1;

    invoke-static {v0, p0, p1}, Lio1;->b(Lio1;Ljo1;Landroid/view/View;)V

    return-void
.end method
