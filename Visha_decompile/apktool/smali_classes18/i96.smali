.class public final Li96;
.super Lb96;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li96$a;
    }
.end annotation


# instance fields
.field public final b:Lmn9;


# direct methods
.method public constructor <init>(Lmn9;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Li96;->b:Lmn9;

    return-void
.end method


# virtual methods
.method public j(Lk96;)V
    .locals 1

    iget-object p0, p0, Li96;->b:Lmn9;

    new-instance v0, Li96$a;

    invoke-direct {v0, p1}, Li96$a;-><init>(Lk96;)V

    invoke-interface {p0, v0}, Lmn9;->a(Lin9;)V

    return-void
.end method
