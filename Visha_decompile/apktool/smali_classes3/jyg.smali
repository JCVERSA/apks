.class public final synthetic Ljyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Llyg;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lhmh;


# direct methods
.method public synthetic constructor <init>(Llyg;Landroid/view/View;Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljyg;->a:Llyg;

    iput-object p2, p0, Ljyg;->b:Landroid/view/View;

    iput-object p3, p0, Ljyg;->c:Lhmh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Ljyg;->a:Llyg;

    iget-object v1, p0, Ljyg;->b:Landroid/view/View;

    iget-object p0, p0, Ljyg;->c:Lhmh;

    invoke-static {v0, v1, p0, p1}, Llyg;->c(Llyg;Landroid/view/View;Lhmh;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
