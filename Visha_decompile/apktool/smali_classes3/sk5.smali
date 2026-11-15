.class public Lsk5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lsk5;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lsk5;->a:Ljava/lang/Object;

    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lsk5;->a:Ljava/lang/Object;

    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method

.method public final c()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lsk5;->a:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public final d()Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lsk5;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method
