.class public abstract Lgwh;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public a:Lhwh;

.field public final b:Ldwh;


# direct methods
.method public constructor <init>(Ldwh;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lgwh;->b:Ldwh;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lgwh;->a:Lhwh;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lhwh;->a(Lgwh;)V

    :cond_0
    return-void
.end method

.method public final b(Lhwh;)V
    .locals 0

    iput-object p1, p0, Lgwh;->a:Lhwh;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgwh;->a(Ljava/lang/String;)V

    return-void
.end method
