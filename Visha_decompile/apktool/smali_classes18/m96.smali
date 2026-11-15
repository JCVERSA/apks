.class public final Lm96;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm96$a;
    }
.end annotation


# instance fields
.field public final a:Ll96;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll96;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lm96;->a:Ll96;

    iput-object p2, p0, Lm96;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    iget-object v0, p0, Lm96;->a:Ll96;

    new-instance v1, Lm96$a;

    iget-object p0, p0, Lm96;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, p0}, Lm96$a;-><init>(Lin9;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ll96;->a(Lk96;)V

    return-void
.end method
