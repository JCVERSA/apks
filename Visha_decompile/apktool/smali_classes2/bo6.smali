.class public final Lbo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo6;->a:Loj8;

    iput-object p2, p0, Lbo6;->b:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;)Lbo6;
    .locals 1

    new-instance v0, Lbo6;

    invoke-direct {v0, p0, p1}, Lbo6;-><init>(Loj8;Loj8;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lao6;
    .locals 1

    new-instance v0, Lao6;

    check-cast p1, Lhl1;

    invoke-direct {v0, p0, p1}, Lao6;-><init>(Landroid/content/Context;Lhl1;)V

    return-object v0
.end method


# virtual methods
.method public b()Lao6;
    .locals 1

    iget-object v0, p0, Lbo6;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lbo6;->b:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lbo6;->c(Landroid/content/Context;Ljava/lang/Object;)Lao6;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbo6;->b()Lao6;

    move-result-object p0

    return-object p0
.end method
