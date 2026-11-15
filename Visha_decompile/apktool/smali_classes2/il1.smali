.class public final Lil1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil1;->a:Loj8;

    iput-object p2, p0, Lil1;->b:Loj8;

    iput-object p3, p0, Lil1;->c:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;)Lil1;
    .locals 1

    new-instance v0, Lil1;

    invoke-direct {v0, p0, p1, p2}, Lil1;-><init>(Loj8;Loj8;Loj8;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lhy0;Lhy0;)Lhl1;
    .locals 1

    new-instance v0, Lhl1;

    invoke-direct {v0, p0, p1, p2}, Lhl1;-><init>(Landroid/content/Context;Lhy0;Lhy0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lhl1;
    .locals 2

    iget-object v0, p0, Lil1;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lil1;->b:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhy0;

    iget-object p0, p0, Lil1;->c:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhy0;

    invoke-static {v0, v1, p0}, Lil1;->c(Landroid/content/Context;Lhy0;Lhy0;)Lhl1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lil1;->b()Lhl1;

    move-result-object p0

    return-object p0
.end method
